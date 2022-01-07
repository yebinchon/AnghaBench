; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_ctype_preptype.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ctype.c_ctype_preptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i8*)* @ctype_preptype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctype_preptype(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @gcref(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @gcref(i32 %18)
  %20 = call %struct.TYPE_13__* @gco2str(i64 %19)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = call i8* @strdata(%struct.TYPE_13__* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ctype_prepstr(%struct.TYPE_15__* %21, i8* %23, i32 %26)
  br label %46

28:                                               ; preds = %4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = call i32 @ctype_prepc(%struct.TYPE_15__* %34, i8 signext 32)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = call i32 @ctype_typeid(i32 %40, %struct.TYPE_14__* %41)
  %43 = call i32 @ctype_prepnum(%struct.TYPE_15__* %37, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %15
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @ctype_prepstr(%struct.TYPE_15__* %47, i8* %48, i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ctype_prepqual(%struct.TYPE_15__* %53, i32 %54)
  ret void
}

declare dso_local i64 @gcref(i32) #1

declare dso_local %struct.TYPE_13__* @gco2str(i64) #1

declare dso_local i32 @ctype_prepstr(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i8* @strdata(%struct.TYPE_13__*) #1

declare dso_local i32 @ctype_prepc(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @ctype_prepnum(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ctype_typeid(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ctype_prepqual(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
