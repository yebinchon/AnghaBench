; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_create.c_vfat8Dot3ToString.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_create.c_vfat8Dot3ToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i32*, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@VFAT_CASE_LOWER_BASE = common dso_local global i32 0, align 4
@VFAT_CASE_LOWER_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"'%wZ'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfat8Dot3ToString(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca i32, align 4
  %8 = alloca [12 x i32], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @RtlCopyMemory(i32* %9, i32 %12, i32 11)
  %14 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 11
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32 229, i32* %19, align 16
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %40, %20
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 32
  br label %37

37:                                               ; preds = %28, %24
  %38 = phi i1 [ false, %24 ], [ %36, %28 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %24

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @RtlOemStringToUnicodeString(%struct.TYPE_12__* %49, %struct.TYPE_14__* %6, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VFAT_CASE_LOWER_BASE, align 4
  %56 = call i64 @BooleanFlagOn(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @RtlDowncaseUnicodeString(%struct.TYPE_12__* %59, %struct.TYPE_12__* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %44
  %64 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 8
  %65 = load i32, i32* %64, align 16
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %163

67:                                               ; preds = %63
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %73
  store i32* %77, i32** %75, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = call i32 @FAT_ENTRY_VOLUME(%struct.TYPE_13__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 4
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 46, i32* %89, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %91, align 8
  br label %94

94:                                               ; preds = %81, %67
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i32* %102, i32** %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %121, %94
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %107, 3
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 32
  br label %118

118:                                              ; preds = %109, %105
  %119 = phi i1 [ false, %105 ], [ %117, %109 ]
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %105

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  store i64 %128, i64* %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = load i32, i32* @FALSE, align 4
  %132 = call i32 @RtlOemStringToUnicodeString(%struct.TYPE_12__* %130, %struct.TYPE_14__* %6, i32 %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @VFAT_CASE_LOWER_EXT, align 4
  %137 = call i64 @BooleanFlagOn(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i32 @RtlDowncaseUnicodeString(%struct.TYPE_12__* %140, %struct.TYPE_12__* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %125
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = udiv i64 %146, 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = sub i64 0, %147
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %149, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %144, %63
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = udiv i64 %170, 4
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  store i32 0, i32* %172, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = call i32 @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %173)
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

declare dso_local i32 @RtlOemStringToUnicodeString(%struct.TYPE_12__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @RtlDowncaseUnicodeString(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @FAT_ENTRY_VOLUME(%struct.TYPE_13__*) #1

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
