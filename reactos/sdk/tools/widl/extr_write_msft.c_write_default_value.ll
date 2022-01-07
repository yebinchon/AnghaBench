; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_write_default_value.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_write_default_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EXPR_STRLIT = common dso_local global i64 0, align 8
@EXPR_WSTRLIT = common dso_local global i64 0, align 8
@VT_BSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"string default value applied to non-string type\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"default value '%s'\0A\00", align 1
@TYPE_ENUM = common dso_local global i64 0, align 8
@VT_USERDEFINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"non-null pointer default value\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"can't write value of type %d yet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_5__*, i32*)* @write_default_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_default_value(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXPR_STRLIT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EXPR_WSTRLIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15, %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @get_type_vt(i32* %22)
  %24 = load i32, i32* @VT_BSTR, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @chat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write_string_value(i32* %34, i32* %35, i32 %39)
  br label %85

41:                                               ; preds = %15
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @type_get_type(i32* %42)
  %44 = load i64, i64* @TYPE_ENUM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 134, i32* %9, align 4
  br label %77

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @is_ptr(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @type_pointer_get_ref(i32* %52)
  %54 = call i32 @get_type_vt(i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @VT_USERDEFINED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 134, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %51
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  br label %76

67:                                               ; preds = %47
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @get_type_vt(i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  switch i32 %70, label %72 [
    i32 135, label %71
    i32 134, label %71
    i32 132, label %71
    i32 138, label %71
    i32 136, label %71
    i32 131, label %71
    i32 130, label %71
    i32 129, label %71
    i32 133, label %71
    i32 128, label %71
    i32 137, label %71
  ]

71:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67
  br label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %85

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %66
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @write_int_value(i32* %78, i32* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %77, %72, %28
  ret void
}

declare dso_local i32 @get_type_vt(i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @chat(i8*, i32) #1

declare dso_local i32 @write_string_value(i32*, i32*, i32) #1

declare dso_local i64 @type_get_type(i32*) #1

declare dso_local i64 @is_ptr(i32*) #1

declare dso_local i32* @type_pointer_get_ref(i32*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @write_int_value(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
