; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_deformat_component.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_deformat_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@INSTALLSTATE_SOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*)* @deformat_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @deformat_component(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32* @msi_alloc(i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %76

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = call i32 @get_formstr_data(%struct.TYPE_11__* %23, %struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @lstrcpynW(i32* %22, i32 %25, i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = call %struct.TYPE_9__* @msi_get_loaded_component(i32 %33, i32* %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %10, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %21
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @msi_free(i32* %38)
  store i32* null, i32** %4, align 8
  br label %76

40:                                               ; preds = %21
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INSTALLSTATE_SOURCE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @msi_resolve_source_folder(i32 %49, i32 %52, i32* null)
  store i32* %53, i32** %9, align 8
  br label %63

54:                                               ; preds = %40
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @msi_get_target_folder(i32 %57, i32 %60)
  %62 = call i32* @strdupW(i32 %61)
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %54, %46
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @strlenW(i32* %67)
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32*, i32** %7, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @msi_free(i32* %73)
  %75 = load i32*, i32** %9, align 8
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %72, %37, %20
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @lstrcpynW(i32*, i32, i32) #1

declare dso_local i32 @get_formstr_data(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @msi_get_loaded_component(i32, i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32* @msi_resolve_source_folder(i32, i32, i32*) #1

declare dso_local i32* @strdupW(i32) #1

declare dso_local i32 @msi_get_target_folder(i32, i32) #1

declare dso_local i32 @strlenW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
