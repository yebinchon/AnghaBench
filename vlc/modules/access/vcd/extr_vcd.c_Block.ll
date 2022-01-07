; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/vcd/extr_vcd.c_Block.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/vcd/extr_vcd.c_Block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i64, %struct.TYPE_15__*, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64, i64* }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@VCD_BLOCKS_ONCE = common dso_local global i32 0, align 4
@VCD_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot get a new block of size: %i\00", align 1
@VCD_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot read sector %i\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"seekpoint change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_17__*, i32*)* @Block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @Block(%struct.TYPE_17__* %0, i32* noalias %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load i32, i32* @VCD_BLOCKS_ONCE, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %47, %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %22, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %19
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @USABLE_TITLES(i32 %42)
  %44 = icmp sge i32 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32*, i32** %5, align 8
  store i32 1, i32* %46, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %222

47:                                               ; preds = %35
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  br label %19

56:                                               ; preds = %19
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %61, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %56
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %74, %56
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @VCD_DATA_SIZE, align 4
  %96 = mul nsw i32 %94, %95
  %97 = call %struct.TYPE_18__* @block_Alloc(i32 %96)
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %9, align 8
  %98 = icmp ne %struct.TYPE_18__* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %93, %90
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @VCD_DATA_SIZE, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32 @msg_Err(%struct.TYPE_17__* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %103)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %222

105:                                              ; preds = %93
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = call i32 @VLC_OBJECT(%struct.TYPE_17__* %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @VCD_TYPE, align 4
  %119 = call i64 @ioctl_ReadSectors(i32 %107, i32 %110, i32 %113, i32 %116, i32 %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %105
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @msg_Err(%struct.TYPE_17__* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = call i32 @block_Release(%struct.TYPE_18__* %127)
  %129 = load i32, i32* @VCD_DATA_SIZE, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %222

139:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %205, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %208

144:                                              ; preds = %140
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %11, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %204

157:                                              ; preds = %144
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %162, %170
  br i1 %171, label %172, label %204

172:                                              ; preds = %157
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @VCD_DATA_SIZE, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %175, %179
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %188, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = icmp sge i64 %180, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %172
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %199 = call i32 @msg_Dbg(%struct.TYPE_17__* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %197, %172, %157, %144
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  br label %140

208:                                              ; preds = %140
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, %211
  store i64 %215, i64* %213, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %221, %struct.TYPE_18__** %3, align 8
  br label %222

222:                                              ; preds = %208, %121, %99, %45
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %223
}

declare dso_local i32 @USABLE_TITLES(i32) #1

declare dso_local %struct.TYPE_18__* @block_Alloc(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i64 @ioctl_ReadSectors(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_17__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
