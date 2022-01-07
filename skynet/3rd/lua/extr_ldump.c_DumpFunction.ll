; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ldump.c_DumpFunction.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ldump.c_DumpFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_19__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*, %struct.TYPE_19__*)* @DumpFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpFunction(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %3
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = call i32 @DumpString(i32* null, %struct.TYPE_19__* %18)
  br label %26

20:                                               ; preds = %11
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = call i32 @DumpString(i32* %23, %struct.TYPE_19__* %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = call i32 @DumpInt(i32 %29, %struct.TYPE_19__* %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = call i32 @DumpInt(i32 %34, %struct.TYPE_19__* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = call i32 @DumpByte(i32 %39, %struct.TYPE_19__* %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = call i32 @DumpByte(i32 %44, %struct.TYPE_19__* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = call i32 @DumpByte(i32 %49, %struct.TYPE_19__* %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = call i32 @DumpCode(%struct.TYPE_18__* %52, %struct.TYPE_19__* %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = call i32 @DumpConstants(%struct.TYPE_18__* %55, %struct.TYPE_19__* %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = call i32 @DumpUpvalues(%struct.TYPE_18__* %58, %struct.TYPE_19__* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = call i32 @DumpProtos(%struct.TYPE_18__* %61, %struct.TYPE_19__* %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = call i32 @DumpDebug(%struct.TYPE_18__* %64, %struct.TYPE_19__* %65)
  ret void
}

declare dso_local i32 @DumpString(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @DumpInt(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @DumpByte(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @DumpCode(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @DumpConstants(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @DumpUpvalues(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @DumpProtos(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @DumpDebug(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
