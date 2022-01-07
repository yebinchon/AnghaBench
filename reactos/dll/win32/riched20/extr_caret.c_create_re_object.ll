; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_create_re_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_create_re_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_object = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Fail to allocate re_object.\0A\00", align 1
@REO_GETOBJ_ALL_INTERFACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.re_object* (i32*)* @create_re_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.re_object* @create_re_object(i32* %0) #0 {
  %2 = alloca %struct.re_object*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.re_object*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.re_object* @heap_alloc(i32 4)
  store %struct.re_object* %5, %struct.re_object** %4, align 8
  %6 = load %struct.re_object*, %struct.re_object** %4, align 8
  %7 = icmp ne %struct.re_object* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.re_object* null, %struct.re_object** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.re_object*, %struct.re_object** %4, align 8
  %12 = getelementptr inbounds %struct.re_object, %struct.re_object* %11, i32 0, i32 0
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @REO_GETOBJ_ALL_INTERFACES, align 4
  %15 = call i32 @ME_CopyReObject(i32* %12, i32* %13, i32 %14)
  %16 = load %struct.re_object*, %struct.re_object** %4, align 8
  store %struct.re_object* %16, %struct.re_object** %2, align 8
  br label %17

17:                                               ; preds = %10, %8
  %18 = load %struct.re_object*, %struct.re_object** %2, align 8
  ret %struct.re_object* %18
}

declare dso_local %struct.re_object* @heap_alloc(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @ME_CopyReObject(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
