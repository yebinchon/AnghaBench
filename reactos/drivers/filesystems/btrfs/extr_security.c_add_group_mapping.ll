; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_add_group_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_security.c_add_group_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i8** }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [13 x i8] c"invalid SID\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"val = %u, i = %u, ssl = %u\0A\00", align 1
@gid_map_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_group_mapping(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %40, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 83
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 49
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 45
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28, %22, %16, %3
  %41 = call i32 @ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %244

42:                                               ; preds = %34
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 4
  store i32 %46, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %67, %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %59, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 8, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @PagedPool, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @ALLOC_TAG, align 4
  %77 = call i8* @ExAllocatePoolWithTag(i32 %74, i32 %75, i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %12, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  %82 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %244

83:                                               ; preds = %70
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %222, %83
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %223

92:                                               ; preds = %89
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %136, %92
  %94 = load i8*, i8** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 45
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ult i32 %102, %103
  br label %105

105:                                              ; preds = %101, %93
  %106 = phi i1 [ false, %93 ], [ %104, %101 ]
  br i1 %106, label %107, label %139

107:                                              ; preds = %105
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp sge i32 %113, 48
  br i1 %114, label %115, label %135

115:                                              ; preds = %107
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sle i32 %121, 57
  br i1 %122, label %123, label %135

123:                                              ; preds = %115
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 %124, 10
  store i32 %125, i32* %10, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = sub nsw i32 %131, 48
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %136

135:                                              ; preds = %115, %107
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %93

139:                                              ; preds = %135, %105
  %140 = load i32, i32* %7, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %196

150:                                              ; preds = %139
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = and i64 %152, 280375465082880
  %154 = ashr i64 %153, 40
  %155 = trunc i64 %154 to i32
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = and i64 %161, 1095216660480
  %163 = ashr i64 %162, 32
  %164 = trunc i64 %163 to i32
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %164, i32* %168, align 4
  %169 = load i32, i32* %10, align 4
  %170 = and i32 %169, -16777216
  %171 = lshr i32 %170, 24
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* %10, align 4
  %177 = and i32 %176, 16711680
  %178 = ashr i32 %177, 16
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  store i32 %178, i32* %182, align 4
  %183 = load i32, i32* %10, align 4
  %184 = and i32 %183, 65280
  %185 = ashr i32 %184, 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 4
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %10, align 4
  %191 = and i32 %190, 255
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 5
  store i32 %191, i32* %195, align 4
  br label %207

196:                                              ; preds = %139
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  %202 = load i8**, i8*** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sub i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %202, i64 %205
  store i8* %199, i8** %206, align 8
  br label %207

207:                                              ; preds = %196, %150
  %208 = load i32, i32* %8, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ugt i32 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %207
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %5, align 4
  %216 = sub i32 %215, %214
  store i32 %216, i32* %5, align 4
  %217 = load i8*, i8** %4, align 8
  %218 = load i32, i32* %7, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  store i8* %220, i8** %4, align 8
  br label %222

221:                                              ; preds = %207
  br label %223

222:                                              ; preds = %213
  br label %89

223:                                              ; preds = %221, %89
  %224 = load i32, i32* @PagedPool, align 4
  %225 = load i32, i32* @ALLOC_TAG, align 4
  %226 = call i8* @ExAllocatePoolWithTag(i32 %224, i32 24, i32 %225)
  %227 = bitcast i8* %226 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %227, %struct.TYPE_5__** %13, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %229 = icmp ne %struct.TYPE_5__* %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %233 = call i32 @ExFreePool(%struct.TYPE_4__* %232)
  br label %244

234:                                              ; preds = %223
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 2
  store %struct.TYPE_4__* %235, %struct.TYPE_4__** %237, align 8
  %238 = load i8*, i8** %6, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  store i8* %238, i8** %240, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = call i32 @InsertTailList(i32* @gid_map_list, i32* %242)
  br label %244

244:                                              ; preds = %234, %230, %81, %40
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i8*, i32, i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_4__*) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
