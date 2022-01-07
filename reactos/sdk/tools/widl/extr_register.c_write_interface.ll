; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@ATTR_UUID = common dso_local global i32 0, align 4
@indent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"'%s' = s '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"NumMethods = s %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ProxyStubClsid32 = s '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*)* @write_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_interface(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ATTR_UUID, align 4
  %11 = call i32* @get_attrp(i32 %9, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATTR_UUID, align 4
  %16 = call i32* @get_attrp(i32 %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @is_object(%struct.TYPE_7__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %68

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @type_iface_get_inherit(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @indent, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @format_uuid(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @put_str(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %68

37:                                               ; preds = %25
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_local(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %68

44:                                               ; preds = %37
  %45 = load i32, i32* @indent, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @format_uuid(i32* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @put_str(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* @indent, align 4
  %53 = call i32 (i32, i8*, ...) @put_str(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @indent, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @indent, align 4
  %56 = load i32, i32* @indent, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = call i32 @count_methods(%struct.TYPE_7__* %57)
  %59 = call i32 (i32, i8*, ...) @put_str(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @indent, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @format_uuid(i32* %61)
  %63 = call i32 (i32, i8*, ...) @put_str(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @indent, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @indent, align 4
  %66 = load i32, i32* @indent, align 4
  %67 = call i32 (i32, i8*, ...) @put_str(i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %44, %43, %29, %24, %19
  ret void
}

declare dso_local i32* @get_attrp(i32, i32) #1

declare dso_local i32 @is_object(%struct.TYPE_7__*) #1

declare dso_local i32 @type_iface_get_inherit(%struct.TYPE_7__*) #1

declare dso_local i32 @put_str(i32, i8*, ...) #1

declare dso_local i32 @format_uuid(i32*) #1

declare dso_local i64 @is_local(i32) #1

declare dso_local i32 @count_methods(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
