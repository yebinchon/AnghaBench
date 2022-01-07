; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_upsert.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_bind.c_binding_upsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_binding = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.sway_binding** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_binding* (%struct.sway_binding*, %struct.TYPE_4__*)* @binding_upsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_binding* @binding_upsert(%struct.sway_binding* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.sway_binding*, align 8
  %4 = alloca %struct.sway_binding*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_binding*, align 8
  store %struct.sway_binding* %0, %struct.sway_binding** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.sway_binding**, %struct.sway_binding*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sway_binding*, %struct.sway_binding** %17, i64 %19
  %21 = load %struct.sway_binding*, %struct.sway_binding** %20, align 8
  store %struct.sway_binding* %21, %struct.sway_binding** %7, align 8
  %22 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %23 = load %struct.sway_binding*, %struct.sway_binding** %7, align 8
  %24 = call i64 @binding_key_compare(%struct.sway_binding* %22, %struct.sway_binding* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.sway_binding**, %struct.sway_binding*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sway_binding*, %struct.sway_binding** %30, i64 %32
  store %struct.sway_binding* %27, %struct.sway_binding** %33, align 8
  %34 = load %struct.sway_binding*, %struct.sway_binding** %7, align 8
  store %struct.sway_binding* %34, %struct.sway_binding** %3, align 8
  br label %43

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = load %struct.sway_binding*, %struct.sway_binding** %4, align 8
  %42 = call i32 @list_add(%struct.TYPE_4__* %40, %struct.sway_binding* %41)
  store %struct.sway_binding* null, %struct.sway_binding** %3, align 8
  br label %43

43:                                               ; preds = %39, %26
  %44 = load %struct.sway_binding*, %struct.sway_binding** %3, align 8
  ret %struct.sway_binding* %44
}

declare dso_local i64 @binding_key_compare(%struct.sway_binding*, %struct.sway_binding*) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, %struct.sway_binding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
