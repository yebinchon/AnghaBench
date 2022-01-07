; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatMakeRootFCB.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatMakeRootFCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, i64, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32, i16, i16, i8*, i32 }
%struct.TYPE_26__ = type { i32, i32, i8*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32, i64, i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i8* null, align 8
@FAT32 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FastIoIsNotPossible = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @vfatMakeRootFCB(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([2 x i32]* @.str to i8*))
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %14 = icmp eq %struct.TYPE_24__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %18 = call %struct.TYPE_24__* @vfatNewFCB(%struct.TYPE_25__* %17, i32* %8)
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %3, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %20 = call i64 @vfatVolumeIsFatX(%struct.TYPE_25__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i32 %27, i8 signext 32, i32 42)
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load i8*, i8** @FILE_ATTRIBUTE_DIRECTORY, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 2
  store i8* %42, i8** %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %54, %58
  store i32 %59, i32* %6, align 4
  br label %148

60:                                               ; preds = %1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memset(i32 %65, i8 signext 32, i32 11)
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load i8*, i8** @FILE_ATTRIBUTE_DIRECTORY, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 3
  store i8* %80, i8** %84, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FAT32, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %60
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %4, align 4
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, 65535
  %98 = trunc i32 %97 to i16
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  store i16 %98, i16* %102, align 4
  %103 = load i32, i32* %4, align 4
  %104 = ashr i32 %103, 16
  %105 = trunc i32 %104 to i16
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 2
  store i16 %105, i16* %109, align 2
  br label %110

110:                                              ; preds = %119, %91
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  br i1 %118, label %119, label %132

119:                                              ; preds = %117
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %6, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @FALSE, align 4
  %131 = call i32 @NextCluster(%struct.TYPE_25__* %128, i32 %129, i32* %5, i32 %130)
  store i32 %131, i32* %7, align 4
  br label %110

132:                                              ; preds = %117
  br label %147

133:                                              ; preds = %60
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 1
  store i16 1, i16* %137, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %141, %145
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %133, %132
  br label %148

148:                                              ; preds = %147, %22
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  store i32 2, i32* %157, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* @FastIoIsNotPossible, align 4
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %181 = call i32 @vfatFCBInitializeCacheFromVolume(%struct.TYPE_25__* %179, %struct.TYPE_24__* %180)
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %184 = call i32 @vfatAddFCBToTable(%struct.TYPE_25__* %182, %struct.TYPE_24__* %183)
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  store %struct.TYPE_24__* %185, %struct.TYPE_24__** %187, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %188
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_24__* @vfatNewFCB(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @vfatVolumeIsFatX(%struct.TYPE_25__*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NextCluster(%struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @vfatFCBInitializeCacheFromVolume(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @vfatAddFCBToTable(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
