; ModuleID = '/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_list_cap.c'
source_filename = "/home/carl/AnghaBench/vlc/src/modules/extr_bank.c_module_list_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@modules = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vlc_modcap_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_list_cap(i32*** noalias %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  store i32*** %0, i32**** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @vlc_modcap_cmp, align 4
  %11 = call i8** @tfind(i8** %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modules, i32 0, i32 0), i32 %10)
  store i8** %11, i8*** %6, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32***, i32**** %4, align 8
  store i32** null, i32*** %15, align 8
  store i32 0, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32** @vlc_alloc(i64 %23, i32 8)
  store i32** %24, i32*** %9, align 8
  %25 = load i32**, i32*** %9, align 8
  %26 = load i32***, i32**** %4, align 8
  store i32** %25, i32*** %26, align 8
  %27 = load i32**, i32*** %9, align 8
  %28 = icmp eq i32** %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %44

33:                                               ; preds = %16
  %34 = load i32**, i32*** %9, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i32** %34, i32 %37, i32 %40)
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %32, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i8** @tfind(i8**, i32*, i32) #1

declare dso_local i32** @vlc_alloc(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
