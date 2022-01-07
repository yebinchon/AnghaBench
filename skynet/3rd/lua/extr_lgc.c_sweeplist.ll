; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lgc.c_sweeplist.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lgc.c_sweeplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@SHAREBIT = common dso_local global i32 0, align 4
@maskcolors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__** (i32*, %struct.TYPE_5__**, i32)* @sweeplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__** @sweeplist(i32* %0, %struct.TYPE_5__** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @G(i32* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @otherwhite(i32* %14)
  %16 = load i32, i32* @SHAREBIT, align 4
  %17 = call i32 @bitmask(i32 %16)
  %18 = or i32 %15, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @luaC_white(i32* %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %65, %3
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp sgt i32 %26, 0
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %66

31:                                               ; preds = %29
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %10, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @isdeadm(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = call i32 @freeobj(i32* %46, %struct.TYPE_5__* %47)
  br label %65

49:                                               ; preds = %31
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @maskcolors, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @SHAREBIT, align 4
  %55 = call i32 @bitmask(i32 %54)
  %56 = and i32 %53, %55
  %57 = or i32 %52, %56
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @cast_byte(i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store %struct.TYPE_5__** %64, %struct.TYPE_5__*** %5, align 8
  br label %65

65:                                               ; preds = %49, %41
  br label %21

66:                                               ; preds = %29
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp eq %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %73

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi %struct.TYPE_5__** [ null, %70 ], [ %72, %71 ]
  ret %struct.TYPE_5__** %74
}

declare dso_local i32* @G(i32*) #1

declare dso_local i32 @otherwhite(i32*) #1

declare dso_local i32 @bitmask(i32) #1

declare dso_local i32 @luaC_white(i32*) #1

declare dso_local i64 @isdeadm(i32, i32) #1

declare dso_local i32 @freeobj(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @cast_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
