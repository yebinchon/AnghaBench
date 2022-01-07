; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_stream_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_get_stream_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p %d\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@MSITYPE_KEY = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@MSITYPE_STRING = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@get_stream_name.fmt = internal constant [3 x i8] c"%d\00", align 1
@LONG_STR_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"oops - unknown column width %d\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@szDot = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i8**)* @get_stream_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_stream_name(%struct.TYPE_6__* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [32 x i8], align 16
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %9, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = bitcast %struct.TYPE_6__* %19 to i32*
  store i32* %20, i32** %16, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %21, i64 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @lstrlenW(i8* %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = call i8* @msi_alloc(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %3
  %37 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %37, i64* %11, align 8
  br label %160

38:                                               ; preds = %3
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @lstrcpyW(i8* %39, i8* %42)
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %153, %38
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %156

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @MSITYPE_KEY, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %151

62:                                               ; preds = %50
  %63 = load i32*, i32** %16, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  %67 = call i64 @TABLE_fetch_int(i32* %63, i64 %64, i64 %66, i64* %13)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %160

72:                                               ; preds = %62
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @MSITYPE_STRING, align 4
  %81 = sext i32 %80 to i64
  %82 = and i64 %79, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %72
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %13, align 8
  %91 = call i8* @msi_string_lookup(i32 %89, i64 %90, i32* null)
  store i8* %91, i8** %15, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %84
  %95 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %95, i64* %11, align 8
  br label %160

96:                                               ; preds = %84
  br label %125

97:                                               ; preds = %72
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %104
  %106 = load i32, i32* @LONG_STR_BYTES, align 4
  %107 = call i64 @bytes_per_column(%struct.TYPE_7__* %100, %struct.TYPE_8__* %105, i32 %106)
  store i64 %107, i64* %18, align 8
  %108 = load i64, i64* %18, align 8
  switch i64 %108, label %119 [
    i64 2, label %109
    i64 4, label %114
  ]

109:                                              ; preds = %97
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %111 = load i64, i64* %13, align 8
  %112 = sub i64 %111, 32768
  %113 = call i32 @sprintfW(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_stream_name.fmt, i64 0, i64 0), i64 %112)
  br label %123

114:                                              ; preds = %97
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %116 = load i64, i64* %13, align 8
  %117 = xor i64 %116, 2147483648
  %118 = call i32 @sprintfW(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_stream_name.fmt, i64 0, i64 0), i64 %117)
  br label %123

119:                                              ; preds = %97
  %120 = load i64, i64* %18, align 8
  %121 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %122, i64* %11, align 8
  br label %160

123:                                              ; preds = %114, %109
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %123, %96
  %126 = load i8*, i8** @szDot, align 8
  %127 = call i32 @lstrlenW(i8* %126)
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 @lstrlenW(i8* %128)
  %130 = add nsw i32 %127, %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %14, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 1
  %137 = trunc i64 %136 to i32
  %138 = call i8* @msi_realloc(i8* %133, i32 %137)
  store i8* %138, i8** %8, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %125
  %142 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %142, i64* %11, align 8
  br label %160

143:                                              ; preds = %125
  %144 = load i8*, i8** %8, align 8
  store i8* %144, i8** %9, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = load i8*, i8** @szDot, align 8
  %147 = call i32 @lstrcatW(i8* %145, i8* %146)
  %148 = load i8*, i8** %9, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = call i32 @lstrcatW(i8* %148, i8* %149)
  br label %152

151:                                              ; preds = %50
  br label %153

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %10, align 8
  br label %44

156:                                              ; preds = %44
  %157 = load i8*, i8** %9, align 8
  %158 = load i8**, i8*** %7, align 8
  store i8* %157, i8** %158, align 8
  %159 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %159, i64* %4, align 8
  br label %165

160:                                              ; preds = %141, %119, %94, %71, %36
  %161 = load i8*, i8** %9, align 8
  %162 = call i32 @msi_free(i8* %161)
  %163 = load i8**, i8*** %7, align 8
  store i8* null, i8** %163, align 8
  %164 = load i64, i64* %11, align 8
  store i64 %164, i64* %4, align 8
  br label %165

165:                                              ; preds = %160, %156
  %166 = load i64, i64* %4, align 8
  ret i64 %166
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i64 @TABLE_fetch_int(i32*, i64, i64, i64*) #1

declare dso_local i8* @msi_string_lookup(i32, i64, i32*) #1

declare dso_local i64 @bytes_per_column(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i8* @msi_realloc(i8*, i32) #1

declare dso_local i32 @lstrcatW(i8*, i8*) #1

declare dso_local i32 @msi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
