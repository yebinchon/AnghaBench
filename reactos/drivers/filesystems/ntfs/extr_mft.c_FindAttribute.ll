; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_FindAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_FindAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i64 }
%struct.TYPE_29__ = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"FindAttribute(%p, %p, 0x%x, %S, %lu, %p, %p)\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%.*S, %.*S\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Found context\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@NTFS_MFT_MASK = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Attribute list references missing attribute to this file entry !\00", align 1
@STATUS_OBJECT_NAME_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindAttribute(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, i64 %2, i32 %3, i64 %4, %struct.TYPE_28__** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_28__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_32__, align 4
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %9, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_28__** %5, %struct.TYPE_28__*** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %14, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_31__* %25, %struct.TYPE_30__* %26, i64 %27, i32 %28, i64 %29, %struct.TYPE_28__** %30, i32* %31)
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %36 = load i64, i64* @FALSE, align 8
  %37 = call i32 @FindFirstAttribute(%struct.TYPE_32__* %18, %struct.TYPE_31__* %34, %struct.TYPE_30__* %35, i64 %36, %struct.TYPE_27__** %19)
  store i32 %37, i32* %17, align 4
  br label %38

38:                                               ; preds = %108, %7
  %39 = load i32, i32* %17, align 4
  %40 = call i64 @NT_SUCCESS(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %110

42:                                               ; preds = %38
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %42
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %108

54:                                               ; preds = %48
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %59 = ptrtoint %struct.TYPE_27__* %58 to i64
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  store i64 %63, i64* %21, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %21, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67, i64 %68, i32 %69)
  %71 = load i64, i64* %21, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i64, i64* %13, align 8
  %74 = mul i64 %73, 4
  %75 = call i64 @RtlCompareMemory(i64 %71, i32 %72, i64 %74)
  %76 = load i64, i64* %13, align 8
  %77 = mul i64 %76, 4
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %16, align 8
  br label %81

81:                                               ; preds = %79, %57
  br label %84

82:                                               ; preds = %54
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* %16, align 8
  br label %84

84:                                               ; preds = %82, %81
  %85 = load i64, i64* %16, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %90 = call %struct.TYPE_28__* @PrepareAttributeContext(%struct.TYPE_27__* %89)
  %91 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %14, align 8
  store %struct.TYPE_28__* %90, %struct.TYPE_28__** %91, align 8
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %14, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %15, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %87
  %105 = call i32 @FindCloseAttribute(%struct.TYPE_32__* %18)
  %106 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %106, i32* %8, align 4
  br label %215

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107, %48, %42
  %109 = call i32 @FindNextAttribute(%struct.TYPE_32__* %18, %struct.TYPE_27__** %19)
  store i32 %109, i32* %17, align 4
  br label %38

110:                                              ; preds = %38
  %111 = call i32 @FindFirstAttributeListItem(%struct.TYPE_32__* %18, %struct.TYPE_29__** %20)
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %210, %110
  %113 = load i32, i32* %17, align 4
  %114 = call i64 @NT_SUCCESS(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %212

116:                                              ; preds = %112
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %210

122:                                              ; preds = %116
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %210

128:                                              ; preds = %122
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %133 = ptrtoint %struct.TYPE_29__* %132 to i64
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  store i64 %137, i64* %22, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %140, i64 %141, i64 %142, i32 %143)
  %145 = load i64, i64* %22, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i64, i64* %13, align 8
  %148 = mul i64 %147, 4
  %149 = call i64 @RtlCompareMemory(i64 %145, i32 %146, i64 %148)
  %150 = load i64, i64* %13, align 8
  %151 = mul i64 %150, 4
  %152 = icmp eq i64 %149, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %131
  %154 = load i64, i64* @TRUE, align 8
  store i64 %154, i64* %16, align 8
  br label %155

155:                                              ; preds = %153, %131
  br label %158

156:                                              ; preds = %128
  %157 = load i64, i64* @TRUE, align 8
  store i64 %157, i64* %16, align 8
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* @TRUE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %209

162:                                              ; preds = %158
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @NTFS_MFT_MASK, align 4
  %167 = and i32 %165, %166
  store i32 %167, i32* %23, align 4
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 0
  %170 = call %struct.TYPE_30__* @ExAllocateFromNPagedLookasideList(i32* %169)
  store %struct.TYPE_30__* %170, %struct.TYPE_30__** %24, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %172 = icmp eq %struct.TYPE_30__* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = call i32 @FindCloseAttribute(%struct.TYPE_32__* %18)
  %175 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %175, i32* %8, align 4
  br label %215

176:                                              ; preds = %162
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %23, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = call i32 @DPRINT1(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %187 = call i32 @ExFreeToNPagedLookasideList(i32* %185, %struct.TYPE_30__* %186)
  %188 = call i32 @FindCloseAttribute(%struct.TYPE_32__* %18)
  %189 = load i32, i32* @STATUS_OBJECT_NAME_NOT_FOUND, align 4
  store i32 %189, i32* %8, align 4
  br label %215

190:                                              ; preds = %176
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %192 = load i32, i32* %23, align 4
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %194 = call i32 @ReadFileRecord(%struct.TYPE_31__* %191, i32 %192, %struct.TYPE_30__* %193)
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i32, i32* %12, align 4
  %199 = load i64, i64* %13, align 8
  %200 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %14, align 8
  %201 = load i32*, i32** %15, align 8
  %202 = call i32 @FindAttribute(%struct.TYPE_31__* %195, %struct.TYPE_30__* %196, i64 %197, i32 %198, i64 %199, %struct.TYPE_28__** %200, i32* %201)
  store i32 %202, i32* %17, align 4
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %206 = call i32 @ExFreeToNPagedLookasideList(i32* %204, %struct.TYPE_30__* %205)
  %207 = call i32 @FindCloseAttribute(%struct.TYPE_32__* %18)
  %208 = load i32, i32* %17, align 4
  store i32 %208, i32* %8, align 4
  br label %215

209:                                              ; preds = %158
  br label %210

210:                                              ; preds = %209, %122, %116
  %211 = call i32 @FindNextAttributeListItem(%struct.TYPE_32__* %18, %struct.TYPE_29__** %20)
  store i32 %211, i32* %17, align 4
  br label %112

212:                                              ; preds = %112
  %213 = call i32 @FindCloseAttribute(%struct.TYPE_32__* %18)
  %214 = load i32, i32* @STATUS_OBJECT_NAME_NOT_FOUND, align 4
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %212, %190, %182, %173, %104
  %216 = load i32, i32* %8, align 4
  ret i32 %216
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @FindFirstAttribute(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_30__*, i64, %struct.TYPE_27__**) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i64 @RtlCompareMemory(i64, i32, i64) #1

declare dso_local %struct.TYPE_28__* @PrepareAttributeContext(%struct.TYPE_27__*) #1

declare dso_local i32 @FindCloseAttribute(%struct.TYPE_32__*) #1

declare dso_local i32 @FindNextAttribute(%struct.TYPE_32__*, %struct.TYPE_27__**) #1

declare dso_local i32 @FindFirstAttributeListItem(%struct.TYPE_32__*, %struct.TYPE_29__**) #1

declare dso_local %struct.TYPE_30__* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_31__*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @FindNextAttributeListItem(%struct.TYPE_32__*, %struct.TYPE_29__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
