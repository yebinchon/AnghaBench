; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-neighbor.c_neighbor_add.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-neighbor.c_neighbor_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%union.in_addr_union = type { i32 }
%union.lladdr_union = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@neighbor_hash_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neighbor_add(%struct.TYPE_5__* %0, i32 %1, %union.in_addr_union* %2, %union.lladdr_union* %3, i64 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.in_addr_union*, align 8
  %11 = alloca %union.lladdr_union*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %union.in_addr_union* %2, %union.in_addr_union** %10, align 8
  store %union.lladdr_union* %3, %union.lladdr_union** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32** %5, i32*** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %union.in_addr_union*, %union.in_addr_union** %10, align 8
  %19 = load %union.lladdr_union*, %union.lladdr_union** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @neighbor_get(%struct.TYPE_5__* %16, i32 %17, %union.in_addr_union* %18, %union.lladdr_union* %19, i64 %20, i32** %14)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %9, align 4
  %31 = load %union.in_addr_union*, %union.in_addr_union** %10, align 8
  %32 = load %union.lladdr_union*, %union.lladdr_union** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @neighbor_add_internal(%struct.TYPE_5__* %27, i32* %29, i32 %30, %union.in_addr_union* %31, %union.lladdr_union* %32, i64 %33, i32** %14)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %7, align 4
  br label %82

39:                                               ; preds = %26
  br label %75

40:                                               ; preds = %6
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = call i32 @set_ensure_allocated(i32* %45, i32* @neighbor_hash_ops)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %7, align 4
  br label %82

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @set_put(i32 %54, i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %82

61:                                               ; preds = %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @set_remove(i32 %64, i32* %65)
  br label %74

67:                                               ; preds = %40
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %7, align 4
  br label %82

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i32**, i32*** %13, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %14, align 8
  %80 = load i32**, i32*** %13, align 8
  store i32* %79, i32** %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %71, %59, %49, %37
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @neighbor_get(%struct.TYPE_5__*, i32, %union.in_addr_union*, %union.lladdr_union*, i64, i32**) #1

declare dso_local i32 @neighbor_add_internal(%struct.TYPE_5__*, i32*, i32, %union.in_addr_union*, %union.lladdr_union*, i64, i32**) #1

declare dso_local i32 @set_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @set_put(i32, i32*) #1

declare dso_local i32 @set_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
