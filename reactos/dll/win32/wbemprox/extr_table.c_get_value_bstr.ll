; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_value_bstr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_value_bstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@get_value_bstr.fmt_signedW = internal constant [3 x i8] c"%d\00", align 1
@get_value_bstr.fmt_unsignedW = internal constant [3 x i8] c"%u\00", align 1
@get_value_bstr.fmt_signed64W = internal constant [6 x i8] c"%I64d\00", align 1
@get_value_bstr.fmt_unsigned64W = internal constant [6 x i8] c"%I64u\00", align 1
@get_value_bstr.fmt_strW = internal constant [5 x i8] c"\22%s\22\00", align 1
@get_value_bstr.trueW = internal constant [5 x i8] c"TRUE\00", align 1
@get_value_bstr.falseW = internal constant [6 x i8] c"FALSE\00", align 1
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"array to string conversion not handled\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@COL_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unhandled column type %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_value_bstr(%struct.table* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [22 x i8], align 16
  %11 = alloca i64, align 8
  store %struct.table* %0, %struct.table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.table*, %struct.table** %5, align 8
  %13 = getelementptr inbounds %struct.table, %struct.table* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %107

24:                                               ; preds = %3
  %25 = load %struct.table*, %struct.table** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @get_value(%struct.table* %25, i64 %26, i64 %27, i8** %8)
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i8* null, i8** %4, align 8
  br label %107

32:                                               ; preds = %24
  %33 = load %struct.table*, %struct.table** %5, align 8
  %34 = getelementptr inbounds %struct.table, %struct.table* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @COL_TYPE_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %95 [
    i32 136, label %42
    i32 135, label %49
    i32 131, label %49
    i32 134, label %71
    i32 133, label %71
    i32 130, label %77
    i32 129, label %77
    i32 132, label %83
    i32 128, label %89
  ]

42:                                               ; preds = %32
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i8* @SysAllocString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_value_bstr.trueW, i64 0, i64 0))
  store i8* %46, i8** %4, align 8
  br label %107

47:                                               ; preds = %42
  %48 = call i8* @SysAllocString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_value_bstr.falseW, i64 0, i64 0))
  store i8* %48, i8** %4, align 8
  br label %107

49:                                               ; preds = %32, %32
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i8* null, i8** %4, align 8
  br label %107

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @strlenW(i8* %56)
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i8* @SysAllocStringLen(i32* null, i64 %60)
  store i8* %61, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  store i8* null, i8** %4, align 8
  br label %107

64:                                               ; preds = %53
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @sprintfW(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_value_bstr.fmt_strW, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** %9, align 8
  store i8* %70, i8** %4, align 8
  br label %107

71:                                               ; preds = %32, %32
  %72 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @sprintfW(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_value_bstr.fmt_signedW, i64 0, i64 0), i8* %73)
  %75 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %76 = call i8* @SysAllocString(i8* %75)
  store i8* %76, i8** %4, align 8
  br label %107

77:                                               ; preds = %32, %32
  %78 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @sprintfW(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_value_bstr.fmt_unsignedW, i64 0, i64 0), i8* %79)
  %81 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %82 = call i8* @SysAllocString(i8* %81)
  store i8* %82, i8** %4, align 8
  br label %107

83:                                               ; preds = %32
  %84 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @wsprintfW(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_value_bstr.fmt_signed64W, i64 0, i64 0), i8* %85)
  %87 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %88 = call i8* @SysAllocString(i8* %87)
  store i8* %88, i8** %4, align 8
  br label %107

89:                                               ; preds = %32
  %90 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @wsprintfW(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_value_bstr.fmt_unsigned64W, i64 0, i64 0), i8* %91)
  %93 = getelementptr inbounds [22 x i8], [22 x i8]* %10, i64 0, i64 0
  %94 = call i8* @SysAllocString(i8* %93)
  store i8* %94, i8** %4, align 8
  br label %107

95:                                               ; preds = %32
  %96 = load %struct.table*, %struct.table** %5, align 8
  %97 = getelementptr inbounds %struct.table, %struct.table* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @COL_TYPE_MASK, align 4
  %104 = and i32 %102, %103
  %105 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %95
  store i8* null, i8** %4, align 8
  br label %107

107:                                              ; preds = %106, %89, %83, %77, %71, %64, %63, %52, %47, %45, %31, %22
  %108 = load i8*, i8** %4, align 8
  ret i8* %108
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i64 @get_value(%struct.table*, i64, i64, i8**) #1

declare dso_local i8* @SysAllocString(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @SysAllocStringLen(i32*, i64) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
