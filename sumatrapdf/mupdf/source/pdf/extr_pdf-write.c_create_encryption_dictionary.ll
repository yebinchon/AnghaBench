; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_create_encryption_dictionary.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_create_encryption_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Encrypt = common dso_local global i32 0, align 4
@Filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@R = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4
@Length = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@EncryptMetadata = common dso_local global i32 0, align 4
@O = common dso_local global i32 0, align 4
@U = common dso_local global i32 0, align 4
@StmF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"StdCF\00", align 1
@StrF = common dso_local global i32 0, align 4
@CF = common dso_local global i32 0, align 4
@StdCF = common dso_local global i32 0, align 4
@AuthEvent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DocOpen\00", align 1
@CFM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"AESV2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"AESV3\00", align 1
@OE = common dso_local global i32 0, align 4
@UE = common dso_local global i32 0, align 4
@Perms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @create_encryption_dictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_encryption_dictionary(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @pdf_crypt_revision(i32* %15, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @pdf_trailer(i32* %19, i32* %20)
  %22 = load i32, i32* @Encrypt, align 4
  %23 = call i32 @PDF_NAME(i32 %22)
  %24 = call i32* @pdf_dict_put_dict(i32* %18, i32* %21, i32 %23, i32 10)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @Filter, align 4
  %28 = call i32 @PDF_NAME(i32 %27)
  %29 = call i32 @pdf_dict_put_name(i32* %25, i32* %26, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @R, align 4
  %33 = call i32 @PDF_NAME(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @pdf_dict_put_int(i32* %30, i32* %31, i32 %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @V, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @pdf_crypt_version(i32* %40, i32* %41)
  %43 = call i32 @pdf_dict_put_int(i32* %36, i32* %37, i32 %39, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @Length, align 4
  %47 = call i32 @PDF_NAME(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @pdf_crypt_length(i32* %48, i32* %49)
  %51 = call i32 @pdf_dict_put_int(i32* %44, i32* %45, i32 %47, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @P, align 4
  %55 = call i32 @PDF_NAME(i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @pdf_crypt_permissions(i32* %56, i32* %57)
  %59 = call i32 @pdf_dict_put_int(i32* %52, i32* %53, i32 %55, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @EncryptMetadata, align 4
  %63 = call i32 @PDF_NAME(i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @pdf_crypt_encrypt_metadata(i32* %64, i32* %65)
  %67 = call i32 @pdf_dict_put_bool(i32* %60, i32* %61, i32 %63, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i8* @pdf_crypt_owner_password(i32* %68, i32* %69)
  store i8* %70, i8** %7, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i8* @pdf_crypt_user_password(i32* %71, i32* %72)
  store i8* %73, i8** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %89

76:                                               ; preds = %3
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* @O, align 4
  %80 = call i32 @PDF_NAME(i32 %79)
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @pdf_dict_put_string(i32* %77, i32* %78, i32 %80, i8* %81, i32 32)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @U, align 4
  %86 = call i32 @PDF_NAME(i32 %85)
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @pdf_dict_put_string(i32* %83, i32* %84, i32 %86, i8* %87, i32 32)
  br label %220

89:                                               ; preds = %3
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %92, label %140

92:                                               ; preds = %89
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @StmF, align 4
  %96 = call i32 @PDF_NAME(i32 %95)
  %97 = call i32 @pdf_dict_put_name(i32* %93, i32* %94, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @StrF, align 4
  %101 = call i32 @PDF_NAME(i32 %100)
  %102 = call i32 @pdf_dict_put_name(i32* %98, i32* %99, i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32*, i32** %4, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* @CF, align 4
  %106 = call i32 @PDF_NAME(i32 %105)
  %107 = call i32* @pdf_dict_put_dict(i32* %103, i32* %104, i32 %106, i32 1)
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* @StdCF, align 4
  %111 = call i32 @PDF_NAME(i32 %110)
  %112 = call i32* @pdf_dict_put_dict(i32* %108, i32* %109, i32 %111, i32 3)
  store i32* %112, i32** %11, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* @AuthEvent, align 4
  %116 = call i32 @PDF_NAME(i32 %115)
  %117 = call i32 @pdf_dict_put_name(i32* %113, i32* %114, i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* @CFM, align 4
  %121 = call i32 @PDF_NAME(i32 %120)
  %122 = call i32 @pdf_dict_put_name(i32* %118, i32* %119, i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32*, i32** %4, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* @Length, align 4
  %126 = call i32 @PDF_NAME(i32 %125)
  %127 = call i32 @pdf_dict_put_int(i32* %123, i32* %124, i32 %126, i32 16)
  %128 = load i32*, i32** %4, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* @O, align 4
  %131 = call i32 @PDF_NAME(i32 %130)
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @pdf_dict_put_string(i32* %128, i32* %129, i32 %131, i8* %132, i32 32)
  %134 = load i32*, i32** %4, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* @U, align 4
  %137 = call i32 @PDF_NAME(i32 %136)
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @pdf_dict_put_string(i32* %134, i32* %135, i32 %137, i8* %138, i32 32)
  br label %219

140:                                              ; preds = %89
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %143, label %218

143:                                              ; preds = %140
  %144 = load i32*, i32** %4, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i8* @pdf_crypt_owner_encryption(i32* %144, i32* %145)
  store i8* %146, i8** %12, align 8
  %147 = load i32*, i32** %4, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i8* @pdf_crypt_user_encryption(i32* %147, i32* %148)
  store i8* %149, i8** %13, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* @StmF, align 4
  %153 = call i32 @PDF_NAME(i32 %152)
  %154 = call i32 @pdf_dict_put_name(i32* %150, i32* %151, i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %155 = load i32*, i32** %4, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* @StrF, align 4
  %158 = call i32 @PDF_NAME(i32 %157)
  %159 = call i32 @pdf_dict_put_name(i32* %155, i32* %156, i32 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32*, i32** %4, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* @CF, align 4
  %163 = call i32 @PDF_NAME(i32 %162)
  %164 = call i32* @pdf_dict_put_dict(i32* %160, i32* %161, i32 %163, i32 1)
  store i32* %164, i32** %14, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* @StdCF, align 4
  %168 = call i32 @PDF_NAME(i32 %167)
  %169 = call i32* @pdf_dict_put_dict(i32* %165, i32* %166, i32 %168, i32 3)
  store i32* %169, i32** %14, align 8
  %170 = load i32*, i32** %4, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = load i32, i32* @AuthEvent, align 4
  %173 = call i32 @PDF_NAME(i32 %172)
  %174 = call i32 @pdf_dict_put_name(i32* %170, i32* %171, i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32*, i32** %4, align 8
  %176 = load i32*, i32** %14, align 8
  %177 = load i32, i32* @CFM, align 4
  %178 = call i32 @PDF_NAME(i32 %177)
  %179 = call i32 @pdf_dict_put_name(i32* %175, i32* %176, i32 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32*, i32** %4, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load i32, i32* @Length, align 4
  %183 = call i32 @PDF_NAME(i32 %182)
  %184 = call i32 @pdf_dict_put_int(i32* %180, i32* %181, i32 %183, i32 32)
  %185 = load i32*, i32** %4, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* @O, align 4
  %188 = call i32 @PDF_NAME(i32 %187)
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @pdf_dict_put_string(i32* %185, i32* %186, i32 %188, i8* %189, i32 48)
  %191 = load i32*, i32** %4, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* @U, align 4
  %194 = call i32 @PDF_NAME(i32 %193)
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 @pdf_dict_put_string(i32* %191, i32* %192, i32 %194, i8* %195, i32 48)
  %197 = load i32*, i32** %4, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* @OE, align 4
  %200 = call i32 @PDF_NAME(i32 %199)
  %201 = load i8*, i8** %12, align 8
  %202 = call i32 @pdf_dict_put_string(i32* %197, i32* %198, i32 %200, i8* %201, i32 32)
  %203 = load i32*, i32** %4, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* @UE, align 4
  %206 = call i32 @PDF_NAME(i32 %205)
  %207 = load i8*, i8** %13, align 8
  %208 = call i32 @pdf_dict_put_string(i32* %203, i32* %204, i32 %206, i8* %207, i32 32)
  %209 = load i32*, i32** %4, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* @Perms, align 4
  %212 = call i32 @PDF_NAME(i32 %211)
  %213 = load i32*, i32** %4, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = call i64 @pdf_crypt_permissions_encryption(i32* %213, i32* %214)
  %216 = inttoptr i64 %215 to i8*
  %217 = call i32 @pdf_dict_put_string(i32* %209, i32* %210, i32 %212, i8* %216, i32 16)
  br label %218

218:                                              ; preds = %143, %140
  br label %219

219:                                              ; preds = %218, %92
  br label %220

220:                                              ; preds = %219, %76
  ret void
}

declare dso_local i32 @pdf_crypt_revision(i32*, i32*) #1

declare dso_local i32* @pdf_dict_put_dict(i32*, i32*, i32, i32) #1

declare dso_local i32* @pdf_trailer(i32*, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put_name(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

declare dso_local i32 @pdf_crypt_version(i32*, i32*) #1

declare dso_local i32 @pdf_crypt_length(i32*, i32*) #1

declare dso_local i32 @pdf_crypt_permissions(i32*, i32*) #1

declare dso_local i32 @pdf_dict_put_bool(i32*, i32*, i32, i32) #1

declare dso_local i32 @pdf_crypt_encrypt_metadata(i32*, i32*) #1

declare dso_local i8* @pdf_crypt_owner_password(i32*, i32*) #1

declare dso_local i8* @pdf_crypt_user_password(i32*, i32*) #1

declare dso_local i32 @pdf_dict_put_string(i32*, i32*, i32, i8*, i32) #1

declare dso_local i8* @pdf_crypt_owner_encryption(i32*, i32*) #1

declare dso_local i8* @pdf_crypt_user_encryption(i32*, i32*) #1

declare dso_local i64 @pdf_crypt_permissions_encryption(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
