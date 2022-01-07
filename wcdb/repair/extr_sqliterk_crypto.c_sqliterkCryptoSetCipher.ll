; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_crypto.c_sqliterkCryptoSetCipher.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_crypto.c_sqliterkCryptoSetCipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32 }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to load KDF salt from file.\00", align 1
@SQLITERK_CANTOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to initialize cipher context: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkCryptoSetCipher(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* null, i32** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %129

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %29, i32* %4, align 4
  br label %158

30:                                               ; preds = %23
  %31 = call i32 (...) @sqlite3_initialize()
  %32 = call i32 (...) @sqlcipher_activate()
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sqlcipher_codec_ctx_init(i32** %8, i32* %33, i32* null, i32 %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %144

45:                                               ; preds = %30
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %11, align 8
  br label %67

55:                                               ; preds = %45
  store i64 16, i64* %13, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %58 = call i32 @sqliterkOSRead(i32* %56, i32 0, i8* %57, i64* %13)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SQLITERK_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i8*, ...) @sqliterkOSError(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %150

65:                                               ; preds = %55
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  store i8* %66, i8** %11, align 8
  br label %67

67:                                               ; preds = %65, %50
  %68 = load i32*, i32** %8, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @sqlcipher_codec_ctx_set_kdf_salt(i32* %68, i8* %69, i32 16)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sqlcipher_codec_ctx_set_pagesize(i32* %76, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %144

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sqlcipher_codec_ctx_set_use_hmac(i32* %92, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %144

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %86
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @sqlcipher_codec_ctx_set_kdf_iter(i32* %108, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %150

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @sqlcipher_codec_ctx_get_pagesize(i32* %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @sqlcipher_codec_ctx_get_reservesize(i32* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %118, %3
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = call i32 @sqlcipher_codec_ctx_free(i32** %136)
  %138 = call i32 (...) @sqlcipher_deactivate()
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i32*, i32** %8, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  store i32* %140, i32** %142, align 8
  %143 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %143, i32* %4, align 4
  br label %158

144:                                              ; preds = %100, %84, %44
  %145 = load i32, i32* @SQLITERK_CANTOPEN, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @sqlite3_errstr(i32 %146)
  %148 = call i32 (i32, i8*, ...) @sqliterkOSError(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @SQLITERK_CANTOPEN, align 4
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %144, %116, %62
  %151 = load i32*, i32** %8, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 @sqlcipher_codec_ctx_free(i32** %8)
  br label %155

155:                                              ; preds = %153, %150
  %156 = call i32 (...) @sqlcipher_deactivate()
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %139, %28
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @sqlite3_initialize(...) #1

declare dso_local i32 @sqlcipher_activate(...) #1

declare dso_local i32 @sqlcipher_codec_ctx_init(i32**, i32*, i32*, i32, i32) #1

declare dso_local i32 @sqliterkOSRead(i32*, i32, i8*, i64*) #1

declare dso_local i32 @sqliterkOSError(i32, i8*, ...) #1

declare dso_local i32 @sqlcipher_codec_ctx_set_kdf_salt(i32*, i8*, i32) #1

declare dso_local i32 @sqlcipher_codec_ctx_set_pagesize(i32*, i32) #1

declare dso_local i32 @sqlcipher_codec_ctx_set_use_hmac(i32*, i32) #1

declare dso_local i32 @sqlcipher_codec_ctx_set_kdf_iter(i32*, i32) #1

declare dso_local i32 @sqlcipher_codec_ctx_get_pagesize(i32*) #1

declare dso_local i32 @sqlcipher_codec_ctx_get_reservesize(i32*) #1

declare dso_local i32 @sqlcipher_codec_ctx_free(i32**) #1

declare dso_local i32 @sqlcipher_deactivate(...) #1

declare dso_local i32 @sqlite3_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
