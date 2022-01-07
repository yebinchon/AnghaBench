; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_create.c_Ext2CreateVolume.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_create.c_Ext2CreateVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i64, i32, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32*, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@FILE_DIRECTORY_FILE = common dso_local global i32 0, align 4
@SL_OPEN_TARGET_DIRECTORY = common dso_local global i32 0, align 4
@STATUS_NOT_A_DIRECTORY = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@FILE_OPEN_IF = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@STATUS_SHARING_VIOLATION = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VCB_VOLUME_LOCKED = common dso_local global i32 0, align 4
@FO_NO_INTERMEDIATE_BUFFERING = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@FILE_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2CreateVolume(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %7, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %20 = call %struct.TYPE_26__* @IoGetCurrentIrpStackLocation(%struct.TYPE_25__* %19)
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %6, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @FILE_DIRECTORY_FILE, align 4
  %28 = call i64 @IsFlagOn(i32 %26, i32 %27)
  store i64 %28, i64* %13, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SL_OPEN_TARGET_DIRECTORY, align 4
  %33 = call i64 @IsFlagOn(i32 %31, i32 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i32, i32* %12, align 4
  %35 = ashr i32 %34, 24
  %36 = and i32 %35, 255
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @STATUS_NOT_A_DIRECTORY, align 4
  store i32 %52, i32* %3, align 4
  br label %227

53:                                               ; preds = %2
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 (...) @DbgBreak()
  %58 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %58, i32* %3, align 4
  br label %227

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @FILE_OPEN, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @FILE_OPEN_IF, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %68, i32* %3, align 4
  br label %227

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @FILE_SHARE_READ, align 4
  %72 = call i64 @FlagOn(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @STATUS_SHARING_VIOLATION, align 4
  store i32 %80, i32* %3, align 4
  br label %227

81:                                               ; preds = %74, %69
  %82 = call i32* @Ext2AllocateCcb(i32 0, i32* null)
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %86, i32* %9, align 4
  br label %225

87:                                               ; preds = %81
  %88 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %88, i32* %9, align 4
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 6
  %101 = load i32, i32* @TRUE, align 4
  %102 = call i32 @IoCheckShareAccess(i32 %94, i32 %95, %struct.TYPE_20__* %98, i32* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @NT_SUCCESS(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %93
  br label %225

107:                                              ; preds = %93
  br label %117

108:                                              ; preds = %87
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 6
  %116 = call i32 @IoSetShareAccess(i32 %109, i32 %110, %struct.TYPE_20__* %113, i32* %115)
  br label %117

117:                                              ; preds = %108, %107
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %156

122:                                              ; preds = %117
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @FILE_SHARE_READ, align 4
  %125 = call i64 @IsFlagOn(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %130 = call i64 @IsFlagOn(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %134 = call i32 @IsVcbReadOnly(%struct.TYPE_27__* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %139 = load i32, i32* @FALSE, align 4
  %140 = call i32 @Ext2FlushFiles(%struct.TYPE_28__* %137, %struct.TYPE_27__* %138, i32 %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %143 = load i32, i32* @FALSE, align 4
  %144 = call i32 @Ext2FlushVolume(%struct.TYPE_28__* %141, %struct.TYPE_27__* %142, i32 %143)
  br label %145

145:                                              ; preds = %136, %132
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @VCB_VOLUME_LOCKED, align 4
  %150 = call i32 @SetLongFlag(i32 %148, i32 %149)
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 4
  store %struct.TYPE_20__* %153, %struct.TYPE_20__** %155, align 8
  br label %187

156:                                              ; preds = %127, %122, %117
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @FO_NO_INTERMEDIATE_BUFFERING, align 4
  %163 = call i64 @FlagOn(i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %156
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @FILE_READ_DATA, align 4
  %168 = load i32, i32* @FILE_WRITE_DATA, align 4
  %169 = or i32 %167, %168
  %170 = call i64 @FlagOn(i32 %166, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %165
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %174 = call i32 @IsVcbReadOnly(%struct.TYPE_27__* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %172
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %179 = load i32, i32* @FALSE, align 4
  %180 = call i32 @Ext2FlushFiles(%struct.TYPE_28__* %177, %struct.TYPE_27__* %178, i32 %179)
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %183 = load i32, i32* @FALSE, align 4
  %184 = call i32 @Ext2FlushVolume(%struct.TYPE_28__* %181, %struct.TYPE_27__* %182, i32 %183)
  br label %185

185:                                              ; preds = %176, %172
  br label %186

186:                                              ; preds = %185, %165, %156
  br label %187

187:                                              ; preds = %186, %145
  %188 = load i32, i32* @FO_NO_INTERMEDIATE_BUFFERING, align 4
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %188
  store i32 %194, i32* %192, align 8
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 3
  store %struct.TYPE_27__* %195, %struct.TYPE_27__** %199, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 2
  store i32* %200, i32** %204, align 8
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  store i32 %207, i32* %211, align 4
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 1
  %214 = call i32 @Ext2ReferXcb(i64* %213)
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 2
  %217 = call i32 @Ext2ReferXcb(i64* %216)
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 0
  %220 = call i32 @Ext2ReferXcb(i64* %219)
  %221 = load i32, i32* @FILE_OPENED, align 4
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  br label %225

225:                                              ; preds = %187, %106, %85
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %79, %67, %56, %51
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.TYPE_26__* @IoGetCurrentIrpStackLocation(%struct.TYPE_25__*) #1

declare dso_local i64 @IsFlagOn(i32, i32) #1

declare dso_local i32 @DbgBreak(...) #1

declare dso_local i64 @FlagOn(i32, i32) #1

declare dso_local i32* @Ext2AllocateCcb(i32, i32*) #1

declare dso_local i32 @IoCheckShareAccess(i32, i32, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @IoSetShareAccess(i32, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @IsVcbReadOnly(%struct.TYPE_27__*) #1

declare dso_local i32 @Ext2FlushFiles(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @Ext2FlushVolume(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @SetLongFlag(i32, i32) #1

declare dso_local i32 @Ext2ReferXcb(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
