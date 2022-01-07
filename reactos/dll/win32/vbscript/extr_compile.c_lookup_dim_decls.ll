; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_lookup_dim_decls.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_lookup_dim_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @lookup_dim_decls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_dim_decls(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @strcmpiW(i32 %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %6, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @strcmpiW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
