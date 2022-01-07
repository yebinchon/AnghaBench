; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatInitFCBFromDirEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatInitFCBFromDirEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_34__, %struct.TYPE_27__, i32, %struct.TYPE_28__, i32, %struct.TYPE_26__, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*)* @vfatInitFCBFromDirEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfatInitFCBFromDirEntry(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %16 = call i32 @RtlCopyMemory(%struct.TYPE_27__* %13, i32* %15, i32 4)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = call i32 @RtlCopyUnicodeString(i32* %18, i32* %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 8
  %24 = call i8* @vfatNameHash(i8* null, i32* %23)
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = call i64 @vfatVolumeIsFatX(%struct.TYPE_25__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  br label %56

39:                                               ; preds = %3
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 6
  %42 = call i8* @vfatNameHash(i8* null, i32* %41)
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 4
  %52 = call i8* @vfatNameHash(i8* %49, i32* %51)
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %39, %31
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %58 = call i64 @vfatFCBIsDirectory(%struct.TYPE_24__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %106

60:                                               ; preds = %56
  %61 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 3
  %65 = call i32 @vfatDirEntryGetFirstCluster(%struct.TYPE_25__* %62, %struct.TYPE_27__* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %72, %76
  store i32 %77, i32* %8, align 4
  br label %105

78:                                               ; preds = %60
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %92, %81
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @NT_SUCCESS(i32 %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %103

92:                                               ; preds = %90
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @FALSE, align 4
  %102 = call i32 @NextCluster(%struct.TYPE_25__* %99, i32 %100, i32* %10, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %83

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %78
  br label %105

105:                                              ; preds = %104, %68
  br label %123

106:                                              ; preds = %56
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %108 = call i64 @vfatVolumeIsFatX(%struct.TYPE_25__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  br label %122

116:                                              ; preds = %106
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %116, %110
  br label %123

123:                                              ; preds = %122, %105
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %135 = call i64 @vfatVolumeIsFatX(%struct.TYPE_25__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %123
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = call i32 @vfatFCBIsRoot(%struct.TYPE_24__* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %167, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 2
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %149, 2
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i1 [ false, %141 ], [ %150, %146 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @ASSERT(i32 %153)
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 2
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, 2
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %151, %137, %123
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ROUND_UP_64(i32 %178, i32 %182)
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 8
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local i32 @RtlCopyUnicodeString(i32*, i32*) #1

declare dso_local i8* @vfatNameHash(i8*, i32*) #1

declare dso_local i64 @vfatVolumeIsFatX(%struct.TYPE_25__*) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_24__*) #1

declare dso_local i32 @vfatDirEntryGetFirstCluster(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NextCluster(%struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @vfatFCBIsRoot(%struct.TYPE_24__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ROUND_UP_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
