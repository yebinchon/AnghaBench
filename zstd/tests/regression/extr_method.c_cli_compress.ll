; ModuleID = '/home/carl/AnghaBench/zstd/tests/regression/extr_method.c_cli_compress.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/regression/extr_method.c_cli_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i64, i64 }
%struct.TYPE_13__ = type { i64 }

@result_error_skip = common dso_local global i32 0, align 4
@data_type_dir = common dso_local global i64 0, align 8
@g_zstdcli = common dso_local global i8* null, align 8
@result_error_system_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"'%s' -cqr %s %s%s%s %s '%s'\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-D '\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"command too large: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to popen command: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"zstd failed with command: %s\0A\00", align 1
@result_error_compression_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @cli_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cli_compress(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @result_error_skip, align 4
  %19 = call i32 @result_error(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %138

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @data_type_dir, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @result_error_skip, align 4
  %35 = call i32 @result_error(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %138

36:                                               ; preds = %28, %20
  %37 = load i8*, i8** @g_zstdcli, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @result_error_system_error, align 4
  %41 = call i32 @result_error(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %138

42:                                               ; preds = %36
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %44 = load i8*, i8** @g_zstdcli, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %42
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  br label %66

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i8* [ %64, %58 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %65 ]
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @snprintf(i8* %43, i32 1024, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %47, i8* %53, i8* %67, i8* %73, i8* %79, i32 %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp uge i64 %87, 1024
  br i1 %88, label %89, label %95

89:                                               ; preds = %66
  %90 = load i32, i32* @stderr, align 4
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %92 = call i32 @fprintf(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @result_error_system_error, align 4
  %94 = call i32 @result_error(i32 %93)
  store i32 %94, i32* %3, align 4
  br label %138

95:                                               ; preds = %66
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %97 = call i32* @popen(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @stderr, align 4
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %103 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %104 = load i32, i32* @result_error_system_error, align 4
  %105 = call i32 @result_error(i32 %104)
  store i32 %105, i32* %3, align 4
  br label %138

106:                                              ; preds = %95
  store i64 0, i64* %10, align 8
  br label %107

107:                                              ; preds = %106, %117
  %108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %109 = load i32*, i32** %8, align 8
  %110 = call i64 @fread(i8* %108, i32 1, i32 4096, i32* %109)
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp ne i64 %114, 4096
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %118

117:                                              ; preds = %107
  br label %107

118:                                              ; preds = %116
  %119 = load i32*, i32** %8, align 8
  %120 = call i64 @ferror(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32*, i32** %8, align 8
  %124 = call i64 @pclose(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122, %118
  %127 = load i32, i32* @stderr, align 4
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %129 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %128)
  %130 = load i32, i32* @result_error_compression_error, align 4
  %131 = call i32 @result_error(i32 %130)
  store i32 %131, i32* %3, align 4
  br label %138

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %134 = load i64, i64* %10, align 8
  store i64 %134, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @result_data(i64 %136)
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %132, %126, %100, %89, %39, %33, %17
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @result_error(i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @pclose(i32*) #1

declare dso_local i32 @result_data(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
