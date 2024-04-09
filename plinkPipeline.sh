plink --vcf in.vcf --recode --out in
plink --file in --geno 0.1 --recode --out out1 --allow-extra-chr --nonfounders
plink --file out1 --mind 0.1 --recode --out out2 --allow-extra-chr --nonfounders
plink --file out2 --maf 0.01 --recode --out out3 --allow-extra-chr --nonfounders
plink --file out3 --hwe 1e-5 --recode --out out4 --allow-extra-chr --nonfounders
