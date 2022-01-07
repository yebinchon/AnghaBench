; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_decl_attributes.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_decl_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@CTF_CONST = common dso_local global i32 0, align 4
@CTF_VOLATILE = common dso_local global i32 0, align 4
@CCONV = common dso_local global i32 0, align 4
@CTFP_CCONV = common dso_local global i32 0, align 4
@MSIZEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @cp_decl_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_decl_attributes(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  br label %5

5:                                                ; preds = %38, %31, %27, %23, %2
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %37 [
    i32 133, label %9
    i32 128, label %15
    i32 129, label %21
    i32 131, label %22
    i32 135, label %23
    i32 136, label %27
    i32 132, label %31
    i32 134, label %35
    i32 130, label %36
  ]

9:                                                ; preds = %5
  %10 = load i32, i32* @CTF_CONST, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %38

15:                                               ; preds = %5
  %16 = load i32, i32* @CTF_VOLATILE, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %38

21:                                               ; preds = %5
  br label %38

22:                                               ; preds = %5
  br label %38

23:                                               ; preds = %5
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = call i32 @cp_decl_gccattribute(%struct.TYPE_14__* %24, %struct.TYPE_15__* %25)
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 @cp_decl_asm(%struct.TYPE_14__* %28, %struct.TYPE_15__* %29)
  br label %5

31:                                               ; preds = %5
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = call i32 @cp_decl_msvcattribute(%struct.TYPE_14__* %32, %struct.TYPE_15__* %33)
  br label %5

35:                                               ; preds = %5
  br label %38

36:                                               ; preds = %5
  br label %38

37:                                               ; preds = %5
  ret void

38:                                               ; preds = %36, %35, %22, %21, %15, %9
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = call i32 @cp_next(%struct.TYPE_14__* %39)
  br label %5
}

declare dso_local i32 @cp_decl_gccattribute(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @cp_decl_asm(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @cp_decl_msvcattribute(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @cp_next(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
