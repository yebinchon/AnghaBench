; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refdb.c_cleanup_refs.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refdb.c_cleanup_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_opt = type { i32 }
%struct.ref = type { i64*, i32 }

@WATCH_REFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cleanup_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_refs(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref_opt*, align 8
  %6 = alloca %struct.ref*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ref_opt*
  store %struct.ref_opt* %8, %struct.ref_opt** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ref*
  store %struct.ref* %10, %struct.ref** %6, align 8
  %11 = load %struct.ref*, %struct.ref** %6, align 8
  %12 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.ref*, %struct.ref** %6, align 8
  %17 = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @WATCH_REFS, align 4
  %21 = load %struct.ref_opt*, %struct.ref_opt** %5, align 8
  %22 = getelementptr inbounds %struct.ref_opt, %struct.ref_opt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %15, %2
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
