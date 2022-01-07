; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_seat.c_merge_seat_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_seat.c_merge_seat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seat_config = type { i32, i32, i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.seat_attachment_config** }
%struct.seat_attachment_config = type { i32 }

@CONSTRAIN_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_seat_config(%struct.seat_config* %0, %struct.seat_config* %1) #0 {
  %3 = alloca %struct.seat_config*, align 8
  %4 = alloca %struct.seat_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seat_attachment_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.seat_attachment_config*, align 8
  %10 = alloca %struct.seat_attachment_config*, align 8
  store %struct.seat_config* %0, %struct.seat_config** %3, align 8
  store %struct.seat_config* %1, %struct.seat_config** %4, align 8
  %11 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %12 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %17 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %20 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %90, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %25 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %93

30:                                               ; preds = %22
  %31 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %32 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.seat_attachment_config**, %struct.seat_attachment_config*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.seat_attachment_config*, %struct.seat_attachment_config** %35, i64 %37
  %39 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %38, align 8
  store %struct.seat_attachment_config* %39, %struct.seat_attachment_config** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %71, %30
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %43 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %40
  %49 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %50 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.seat_attachment_config**, %struct.seat_attachment_config*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.seat_attachment_config*, %struct.seat_attachment_config** %53, i64 %55
  %57 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %56, align 8
  store %struct.seat_attachment_config* %57, %struct.seat_attachment_config** %9, align 8
  %58 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %6, align 8
  %59 = getelementptr inbounds %struct.seat_attachment_config, %struct.seat_attachment_config* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %9, align 8
  %62 = getelementptr inbounds %struct.seat_attachment_config, %struct.seat_attachment_config* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @strcmp(i32 %60, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %48
  %67 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %9, align 8
  %68 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %6, align 8
  %69 = call i32 @merge_seat_attachment_config(%struct.seat_attachment_config* %67, %struct.seat_attachment_config* %68)
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %6, align 8
  %79 = call %struct.seat_attachment_config* @seat_attachment_config_copy(%struct.seat_attachment_config* %78)
  store %struct.seat_attachment_config* %79, %struct.seat_attachment_config** %10, align 8
  %80 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %10, align 8
  %81 = icmp ne %struct.seat_attachment_config* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %84 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.seat_attachment_config*, %struct.seat_attachment_config** %10, align 8
  %87 = call i32 @list_add(%struct.TYPE_4__* %85, %struct.seat_attachment_config* %86)
  br label %88

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %22

93:                                               ; preds = %22
  %94 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %95 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %100 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %103 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %106 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CONSTRAIN_DEFAULT, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %112 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %115 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %110, %104
  %117 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %118 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %143

122:                                              ; preds = %116
  %123 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %124 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @free(i32* %126)
  %128 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %129 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32* @strdup(i32* %131)
  %133 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %134 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i32* %132, i32** %135, align 8
  %136 = load %struct.seat_config*, %struct.seat_config** %4, align 8
  %137 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.seat_config*, %struct.seat_config** %3, align 8
  %141 = getelementptr inbounds %struct.seat_config, %struct.seat_config* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  br label %143

143:                                              ; preds = %122, %116
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @merge_seat_attachment_config(%struct.seat_attachment_config*, %struct.seat_attachment_config*) #1

declare dso_local %struct.seat_attachment_config* @seat_attachment_config_copy(%struct.seat_attachment_config*) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, %struct.seat_attachment_config*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
