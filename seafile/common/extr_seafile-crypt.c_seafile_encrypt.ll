; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_encrypt.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid params.\0A\00", align 1
@ENC_FAILURE = common dso_local global i32 0, align 4
@BLK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to allocate the output buffer.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_encrypt(i8** %0, i32* %1, i8* %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %17 = load i8**, i8*** %7, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32*, i32** %8, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %5
  %28 = call i32 @seaf_warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %144

29:                                               ; preds = %24
  %30 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %30, i32** %12, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 (...) @EVP_aes_256_cbc()
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @EVP_EncryptInit_ex(i32* %36, i32 %37, i32* null, i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  br label %71

45:                                               ; preds = %29
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 (...) @EVP_aes_128_cbc()
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @EVP_EncryptInit_ex(i32* %51, i32 %52, i32* null, i32 %55, i32 %58)
  store i32 %59, i32* %13, align 4
  br label %70

60:                                               ; preds = %45
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 (...) @EVP_aes_128_ecb()
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @EVP_EncryptInit_ex(i32* %61, i32 %62, i32* null, i32 %65, i32 %68)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %60, %50
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @ENC_FAILURE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @EVP_CIPHER_CTX_free(i32* %76)
  store i32 -1, i32* %6, align 4
  br label %144

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @BLK_SIZE, align 4
  %81 = sdiv i32 %79, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @BLK_SIZE, align 4
  %85 = mul nsw i32 %83, %84
  %86 = call i64 @g_malloc(i32 %85)
  %87 = inttoptr i64 %86 to i8*
  %88 = load i8**, i8*** %7, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i8**, i8*** %7, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %131

94:                                               ; preds = %78
  %95 = load i32*, i32** %12, align 8
  %96 = load i8**, i8*** %7, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @EVP_EncryptUpdate(i32* %95, i8* %97, i32* %15, i8* %98, i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @ENC_FAILURE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %131

105:                                              ; preds = %94
  %106 = load i32*, i32** %12, align 8
  %107 = load i8**, i8*** %7, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = call i32 @EVP_EncryptFinal_ex(i32* %106, i8* %111, i32* %16)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @ENC_FAILURE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %105
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @BLK_SIZE, align 4
  %125 = mul nsw i32 %123, %124
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120, %105
  br label %131

128:                                              ; preds = %120
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @EVP_CIPHER_CTX_free(i32* %129)
  store i32 0, i32* %6, align 4
  br label %144

131:                                              ; preds = %127, %104, %92
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @EVP_CIPHER_CTX_free(i32* %132)
  %134 = load i32*, i32** %8, align 8
  store i32 -1, i32* %134, align 4
  %135 = load i8**, i8*** %7, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i8**, i8*** %7, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @g_free(i8* %140)
  br label %142

142:                                              ; preds = %138, %131
  %143 = load i8**, i8*** %7, align 8
  store i8* null, i8** %143, align 8
  store i32 -1, i32* %6, align 4
  br label %144

144:                                              ; preds = %142, %128, %75, %27
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @EVP_aes_128_cbc(...) #1

declare dso_local i32 @EVP_aes_128_ecb(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i64 @g_malloc(i32) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
