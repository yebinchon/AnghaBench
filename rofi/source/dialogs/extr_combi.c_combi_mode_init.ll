; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_mode_init.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32, i32*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @combi_mode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combi_mode_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @mode_get_private_data(i32* %8)
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %114

11:                                               ; preds = %1
  %12 = call i8* @g_malloc0(i32 40)
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  %17 = call i32 @mode_set_private_data(i32* %14, i8* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @combi_mode_parse_switchers(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @g_malloc0(i32 %25)
  %27 = bitcast i8* %26 to i64*
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64* %27, i64** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i8* @g_malloc0(i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %60, %11
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mode_init(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %116

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %63
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %109, %68
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mode_get_num_entries(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %89, i64* %95, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %77
  %110 = load i32, i32* %6, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %71

112:                                              ; preds = %71
  br label %113

113:                                              ; preds = %112, %63
  br label %114

114:                                              ; preds = %113, %1
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %57
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32* @mode_get_private_data(i32*) #1

declare dso_local i8* @g_malloc0(i32) #1

declare dso_local i32 @mode_set_private_data(i32*, i8*) #1

declare dso_local i32 @combi_mode_parse_switchers(i32*) #1

declare dso_local i32 @mode_init(i32) #1

declare dso_local i32 @mode_get_num_entries(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
