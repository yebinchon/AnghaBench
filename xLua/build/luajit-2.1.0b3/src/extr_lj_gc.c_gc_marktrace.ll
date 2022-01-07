; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_marktrace.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_marktrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i64)* @gc_marktrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_marktrace(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = call %struct.TYPE_19__* @G2J(%struct.TYPE_17__* %6)
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @traceref(%struct.TYPE_19__* %7, i64 %8)
  %10 = call %struct.TYPE_18__* @obj2gco(i32 %9)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = call %struct.TYPE_19__* @G2J(%struct.TYPE_17__* %12)
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @lua_assert(i32 %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = call i64 @iswhite(%struct.TYPE_18__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = call i32 @white2gray(%struct.TYPE_18__* %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @setgcrefr(i32 %29, i32 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = call i32 @setgcref(i32 %38, %struct.TYPE_18__* %39)
  br label %41

41:                                               ; preds = %23, %2
  ret void
}

declare dso_local %struct.TYPE_18__* @obj2gco(i32) #1

declare dso_local i32 @traceref(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_19__* @G2J(%struct.TYPE_17__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @iswhite(%struct.TYPE_18__*) #1

declare dso_local i32 @white2gray(%struct.TYPE_18__*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i32 @setgcref(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
