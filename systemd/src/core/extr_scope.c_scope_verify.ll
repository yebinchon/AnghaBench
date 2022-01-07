; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_verify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@UNIT_LOADED = common dso_local global i64 0, align 8
@SPECIAL_INIT_SCOPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Scope has no PIDs. Refusing.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @scope_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scope_verify(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = ptrtoint i32* %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_4__* @UNIT(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UNIT_LOADED, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.TYPE_4__* @UNIT(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @set_isempty(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call %struct.TYPE_4__* @UNIT(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @MANAGER_IS_RELOADING(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_4__* @UNIT(i32* %29)
  %31 = load i32, i32* @SPECIAL_INIT_SCOPE, align 4
  %32 = call i32 @unit_has_name(%struct.TYPE_4__* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_4__* @UNIT(i32* %35)
  %37 = call i32 @log_unit_error(%struct.TYPE_4__* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %28, %21, %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @UNIT(i32*) #1

declare dso_local i64 @set_isempty(i32) #1

declare dso_local i32 @MANAGER_IS_RELOADING(i32) #1

declare dso_local i32 @unit_has_name(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @log_unit_error(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
