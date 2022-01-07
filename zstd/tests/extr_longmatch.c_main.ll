; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_longmatch.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_longmatch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }

@ZSTD_fast = common dso_local global i32 0, align 4
@__const.main.match = private unnamed_addr constant [63 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@.str = private unnamed_addr constant [32 x i8] c"\0A ===   Long Match Test   === \0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Creating random data to produce long matches \0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Compressing, trying to generate a segfault \0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Compression completed successfully (no error triggered)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca [63 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32* (...) @ZSTD_createCStream()
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %188

27:                                               ; preds = %2
  %28 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 28)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 18, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 13, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 14, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  store i32 7, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i32 16, i32* %40, align 4
  %41 = load i32, i32* @ZSTD_fast, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @ZSTD_initCStream_advanced(i32* %47, i32* null, i32 0, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %7, i32 0)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @ZSTD_isError(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  store i32 2, i32* %3, align 4
  br label %188

53:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  store i32 undef, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 1, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 1, %57
  %59 = call i64 @malloc(i32 %58)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %14, align 8
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 1, %61
  %63 = call i32 @ZSTD_compressBound(i32 %62)
  %64 = call i64 @malloc(i32 %63)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %67 = load i8*, i8** %15, align 8
  store i8* %67, i8** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 1, %69
  %71 = call i32 @ZSTD_compressBound(i32 %70)
  store i32 %71, i32* %68, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = bitcast [63 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %73, i8* align 16 getelementptr inbounds ([63 x i8], [63 x i8]* @__const.main.match, i32 0, i32 0), i64 63, i1 false)
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 1, %74
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, 126
  store i64 %77, i64* %18, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %19, align 8
  br label %80

80:                                               ; preds = %90, %53
  %81 = load i64, i64* %19, align 8
  %82 = icmp ult i64 %81, 63
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i64, i64* %19, align 8
  %85 = getelementptr inbounds [63 x i8], [63 x i8]* %17, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %14, align 8
  %88 = load i64, i64* %19, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 %86, i8* %89, align 1
  br label %90

90:                                               ; preds = %83
  %91 = load i64, i64* %19, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %19, align 8
  br label %80

93:                                               ; preds = %80
  store i64 0, i64* %19, align 8
  br label %94

94:                                               ; preds = %106, %93
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %18, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = call i64 (...) @rand()
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i8
  %102 = load i8*, i8** %14, align 8
  %103 = load i64, i64* %19, align 8
  %104 = add i64 63, %103
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 %101, i8* %105, align 1
  br label %106

106:                                              ; preds = %98
  %107 = load i64, i64* %19, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %19, align 8
  br label %94

109:                                              ; preds = %94
  store i64 0, i64* %19, align 8
  br label %110

110:                                              ; preds = %123, %109
  %111 = load i64, i64* %19, align 8
  %112 = icmp ult i64 %111, 63
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i64, i64* %19, align 8
  %115 = getelementptr inbounds [63 x i8], [63 x i8]* %17, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %14, align 8
  %118 = load i64, i64* %18, align 8
  %119 = add i64 63, %118
  %120 = load i64, i64* %19, align 8
  %121 = add i64 %119, %120
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  store i8 %116, i8* %122, align 1
  br label %123

123:                                              ; preds = %113
  %124 = load i64, i64* %19, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %19, align 8
  br label %110

126:                                              ; preds = %110
  %127 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32*, i32** %6, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load i64, i64* %12, align 8
  %131 = bitcast %struct.TYPE_9__* %16 to { i8*, i64 }*
  %132 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %131, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @compress(i32* %128, i8* %133, i64 %135, i8* %129, i64 %130)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  store i32 1, i32* %3, align 4
  br label %188

139:                                              ; preds = %126
  %140 = load i64, i64* %12, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %173, %139
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, -2147483648
  br i1 %147, label %148, label %182

148:                                              ; preds = %145
  %149 = call i64 (...) @rand()
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %13, align 8
  %152 = sub i64 %150, %151
  %153 = add i64 %152, 1
  %154 = urem i64 %149, %153
  store i64 %154, i64* %20, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* %12, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  store i64 0, i64* %13, align 8
  br label %159

159:                                              ; preds = %158, %148
  %160 = load i32*, i32** %6, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i64, i64* %20, align 8
  %165 = bitcast %struct.TYPE_9__* %16 to { i8*, i64 }*
  %166 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %165, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @compress(i32* %160, i8* %167, i64 %169, i8* %163, i64 %164)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  store i32 1, i32* %3, align 4
  br label %188

173:                                              ; preds = %159
  %174 = load i64, i64* %20, align 8
  %175 = load i64, i64* %13, align 8
  %176 = add i64 %175, %174
  store i64 %176, i64* %13, align 8
  %177 = load i64, i64* %20, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %10, align 4
  br label %145

182:                                              ; preds = %145
  %183 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %184 = load i8*, i8** %14, align 8
  %185 = call i32 @free(i8* %184)
  %186 = load i8*, i8** %15, align 8
  %187 = call i32 @free(i8* %186)
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %182, %172, %138, %52, %26
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32* @ZSTD_createCStream(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @ZSTD_initCStream_advanced(i32*, i32*, i32, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ZSTD_compressBound(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @rand(...) #1

declare dso_local i64 @compress(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
