; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_externalid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_externalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.reader_position }
%struct.reader_position = type { i32 }

@reader_parse_externalid.systemW = internal global [7 x i8] c"SYSTEM\00", align 1
@reader_parse_externalid.publicW = internal global [7 x i8] c"PUBLIC\00", align 1
@WC_E_WHITESPACE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @reader_parse_externalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_externalid(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.reader_position, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = bitcast %struct.reader_position* %4 to i8*
  %13 = bitcast %struct.reader_position* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @reader_cmp(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.publicW, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @reader_skipn(%struct.TYPE_9__* %18, i32 6)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i32 @reader_skipspaces(%struct.TYPE_9__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @WC_E_WHITESPACE, align 4
  store i32 %25, i32* %2, align 4
  br label %100

26:                                               ; preds = %17
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = call i32 @reader_parse_pub_literal(%struct.TYPE_9__* %27, i32* %9)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %26
  %35 = call i32 @strlenW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.publicW, i64 0, i64 0))
  %36 = call i32 @reader_init_cstrvalue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.publicW, i64 0, i64 0), i32 %35, i32* %5)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = call i32 @reader_add_attr(%struct.TYPE_9__* %37, i32* null, i32* %5, i32* null, i32* %9, %struct.reader_position* %4, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %100

44:                                               ; preds = %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i32 @reader_skipspaces(%struct.TYPE_9__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %100

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = call i32 @reader_parse_sys_literal(%struct.TYPE_9__* %52, i32* %6)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %2, align 4
  br label %100

59:                                               ; preds = %51
  %60 = call i32 @strlenW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.systemW, i64 0, i64 0))
  %61 = call i32 @reader_init_cstrvalue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.systemW, i64 0, i64 0), i32 %60, i32* %5)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 @reader_add_attr(%struct.TYPE_9__* %62, i32* null, i32* %5, i32* null, i32* %6, %struct.reader_position* %4, i32 0)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @FAILED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %100

69:                                               ; preds = %59
  %70 = load i32, i32* @S_OK, align 4
  store i32 %70, i32* %2, align 4
  br label %100

71:                                               ; preds = %1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = call i32 @reader_cmp(%struct.TYPE_9__* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.systemW, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = call i32 @reader_skipn(%struct.TYPE_9__* %76, i32 6)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 @reader_skipspaces(%struct.TYPE_9__* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @WC_E_WHITESPACE, align 4
  store i32 %83, i32* %2, align 4
  br label %100

84:                                               ; preds = %75
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = call i32 @reader_parse_sys_literal(%struct.TYPE_9__* %85, i32* %6)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %100

92:                                               ; preds = %84
  %93 = call i32 @strlenW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.systemW, i64 0, i64 0))
  %94 = call i32 @reader_init_cstrvalue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @reader_parse_externalid.systemW, i64 0, i64 0), i32 %93, i32* %5)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = call i32 @reader_add_attr(%struct.TYPE_9__* %95, i32* null, i32* %5, i32* null, i32* %6, %struct.reader_position* %4, i32 0)
  store i32 %96, i32* %2, align 4
  br label %100

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* @S_FALSE, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %92, %90, %82, %69, %67, %57, %49, %42, %32, %24
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reader_cmp(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @reader_skipn(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @reader_skipspaces(%struct.TYPE_9__*) #2

declare dso_local i32 @reader_parse_pub_literal(%struct.TYPE_9__*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @reader_init_cstrvalue(i8*, i32, i32*) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i32 @reader_add_attr(%struct.TYPE_9__*, i32*, i32*, i32*, i32*, %struct.reader_position*, i32) #2

declare dso_local i32 @reader_parse_sys_literal(%struct.TYPE_9__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
