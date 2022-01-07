; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbInit.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32*, i8*, i8*, i64, i32* }

@ldb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sdsfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbInit() #0 {
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 5), align 8
  %1 = call i8* (...) @listCreate()
  store i8* %1, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 4), align 8
  %2 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 4), align 8
  %3 = load i64, i64* @sdsfree, align 8
  %4 = inttoptr i64 %3 to void (i8*)*
  %5 = call i32 @listSetFreeMethod(i8* %2, void (i8*)* %4)
  %6 = call i8* (...) @listCreate()
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 1), align 8
  %7 = call i32 (...) @sdsempty()
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @listSetFreeMethod(i8*, void (i8*)*) #1

declare dso_local i32 @sdsempty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
