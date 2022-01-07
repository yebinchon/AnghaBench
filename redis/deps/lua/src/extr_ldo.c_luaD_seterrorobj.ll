; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_ldo.c_luaD_seterrorobj.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_ldo.c_luaD_seterrorobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@MEMERRMSG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaD_seterrorobj(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %29 [
    i32 130, label %8
    i32 131, label %15
    i32 128, label %21
    i32 129, label %21
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load i8*, i8** @MEMERRMSG, align 8
  %13 = call i32 @luaS_newliteral(%struct.TYPE_6__* %11, i8* %12)
  %14 = call i32 @setsvalue2s(%struct.TYPE_6__* %9, i64 %10, i32 %13)
  br label %29

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i32 @luaS_newliteral(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @setsvalue2s(%struct.TYPE_6__* %16, i64 %17, i32 %19)
  br label %29

21:                                               ; preds = %3, %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @setobjs2s(%struct.TYPE_6__* %22, i64 %23, i64 %27)
  br label %29

29:                                               ; preds = %3, %21, %15, %8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  ret void
}

declare dso_local i32 @setsvalue2s(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @luaS_newliteral(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @setobjs2s(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
