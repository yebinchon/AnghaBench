; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_typelib_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_typelib_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ATTR_UUID = common dso_local global i32 0, align 4
@ATTR_VERSION = common dso_local global i32 0, align 4
@ATTR_OLEAUTOMATION = common dso_local global i32 0, align 4
@ATTR_DISPINTERFACE = common dso_local global i32 0, align 4
@indent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"'%s' = s '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"ProxyStubClsid = s '{00020424-0000-0000-C000-000000000046}'\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"ProxyStubClsid32 = s '{00020424-0000-0000-C000-000000000046}'\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"TypeLib = s '%s' { val Version = s '%u.%u' }\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"TypeLib = s '%s'\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*)* @write_typelib_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_typelib_interface(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATTR_UUID, align 4
  %12 = call i32* @get_attrp(i32 %10, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATTR_UUID, align 4
  %17 = call i32* @get_attrp(i32 %15, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATTR_VERSION, align 4
  %22 = call i32 @get_attrv(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %83

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32 @is_object(%struct.TYPE_7__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %83

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATTR_OLEAUTOMATION, align 4
  %36 = call i32 @is_attr(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATTR_DISPINTERFACE, align 4
  %43 = call i32 @is_attr(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %83

46:                                               ; preds = %38, %31
  %47 = load i32, i32* @indent, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @format_uuid(i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @put_str(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @indent, align 4
  %55 = call i32 (i32, i8*, ...) @put_str(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @indent, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @indent, align 4
  %58 = load i32, i32* @indent, align 4
  %59 = call i32 (i32, i8*, ...) @put_str(i32 %58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @indent, align 4
  %61 = call i32 (i32, i8*, ...) @put_str(i32 %60, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %46
  %65 = load i32, i32* @indent, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @format_uuid(i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @MAJORVERSION(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @MINORVERSION(i32 %70)
  %72 = call i32 (i32, i8*, ...) @put_str(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %69, i32 %71)
  br label %78

73:                                               ; preds = %46
  %74 = load i32, i32* @indent, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @format_uuid(i32* %75)
  %77 = call i32 (i32, i8*, ...) @put_str(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %73, %64
  %79 = load i32, i32* @indent, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* @indent, align 4
  %81 = load i32, i32* @indent, align 4
  %82 = call i32 (i32, i8*, ...) @put_str(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %45, %30, %25
  ret void
}

declare dso_local i32* @get_attrp(i32, i32) #1

declare dso_local i32 @get_attrv(i32, i32) #1

declare dso_local i32 @is_object(%struct.TYPE_7__*) #1

declare dso_local i32 @is_attr(i32, i32) #1

declare dso_local i32 @put_str(i32, i8*, ...) #1

declare dso_local i32 @format_uuid(i32*) #1

declare dso_local i32 @MAJORVERSION(i32) #1

declare dso_local i32 @MINORVERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
