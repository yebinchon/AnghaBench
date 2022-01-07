; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_decrypt.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@BLK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid param(s).\0A\00", align 1
@DEC_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to allocate the output buffer.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_decrypt(i8** %0, i32* %1, i8* %2, i32 %3, %struct.TYPE_3__* %4) #0 {
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
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %16 = load i8**, i8*** %7, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32*, i32** %8, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @BLK_SIZE, align 4
  %26 = srem i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %23, %20, %5
  %32 = call i32 @seaf_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %140

33:                                               ; preds = %28
  %34 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %34, i32** %12, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 (...) @EVP_aes_256_cbc()
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @EVP_DecryptInit_ex(i32* %40, i32 %41, i32* null, i32 %44, i32 %47)
  store i32 %48, i32* %13, align 4
  br label %75

49:                                               ; preds = %33
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 (...) @EVP_aes_128_cbc()
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @EVP_DecryptInit_ex(i32* %55, i32 %56, i32* null, i32 %59, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %74

64:                                               ; preds = %49
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 (...) @EVP_aes_128_ecb()
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @EVP_DecryptInit_ex(i32* %65, i32 %66, i32* null, i32 %69, i32 %72)
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %64, %54
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @DEC_FAILURE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @EVP_CIPHER_CTX_free(i32* %80)
  store i32 -1, i32* %6, align 4
  br label %140

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @g_malloc(i32 %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load i8**, i8*** %7, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i8**, i8*** %7, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %127

92:                                               ; preds = %82
  %93 = load i32*, i32** %12, align 8
  %94 = load i8**, i8*** %7, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @EVP_DecryptUpdate(i32* %93, i8* %95, i32* %14, i8* %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @DEC_FAILURE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %127

103:                                              ; preds = %92
  %104 = load i32*, i32** %12, align 8
  %105 = load i8**, i8*** %7, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = call i32 @EVP_DecryptFinal_ex(i32* %104, i8* %109, i32* %15)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @DEC_FAILURE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %103
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118, %103
  br label %127

124:                                              ; preds = %118
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @EVP_CIPHER_CTX_free(i32* %125)
  store i32 0, i32* %6, align 4
  br label %140

127:                                              ; preds = %123, %102, %90
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @EVP_CIPHER_CTX_free(i32* %128)
  %130 = load i32*, i32** %8, align 8
  store i32 -1, i32* %130, align 4
  %131 = load i8**, i8*** %7, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i8**, i8*** %7, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @g_free(i8* %136)
  br label %138

138:                                              ; preds = %134, %127
  %139 = load i8**, i8*** %7, align 8
  store i8* null, i8** %139, align 8
  store i32 -1, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %124, %79, %31
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_DecryptInit_ex(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @EVP_aes_128_cbc(...) #1

declare dso_local i32 @EVP_aes_128_ecb(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i64 @g_malloc(i32) #1

declare dso_local i32 @EVP_DecryptUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_DecryptFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
