; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hxxx_common.c_PacketizeXXC1.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hxxx_common.c_PacketizeXXC1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i64, i32, i32 }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Broken frame : size %d is too big\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @PacketizeXXC1(i32* %0, i32 %1, %struct.TYPE_14__** %2, %struct.TYPE_14__* (i32*, i32*, %struct.TYPE_14__*)* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca %struct.TYPE_14__* (i32*, i32*, %struct.TYPE_14__*)*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* (i32*, i32*, %struct.TYPE_14__*)* %3, %struct.TYPE_14__* (i32*, i32*, %struct.TYPE_14__*)** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  %18 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %19 = icmp ne %struct.TYPE_14__** %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %211

25:                                               ; preds = %20
  %26 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = call i32 @block_Release(%struct.TYPE_14__* %35)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %211

37:                                               ; preds = %25
  %38 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %10, align 8
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %12, align 8
  br label %44

44:                                               ; preds = %202, %37
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = icmp ult i32* %45, %52
  br i1 %53, label %54, label %203

54:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32*, i32** %12, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %203

71:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %83, %71
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %79, align 4
  %82 = or i32 %78, %81
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %72

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32*, i32** %12, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = icmp sgt i64 %91, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %89, %86
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @msg_Err(i32* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %203

109:                                              ; preds = %89
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32*, i32** %12, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = icmp eq i64 %111, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %109
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call %struct.TYPE_14__* @block_Realloc(%struct.TYPE_14__* %133, i32 4, i32 %134)
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %16, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %137 = icmp ne %struct.TYPE_14__* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  br label %139

139:                                              ; preds = %138, %125
  br label %169

140:                                              ; preds = %109
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 4, %141
  %143 = call %struct.TYPE_14__* @block_Alloc(i32 %142)
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %16, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %145 = icmp ne %struct.TYPE_14__* %144, null
  br i1 %145, label %146, label %164

146:                                              ; preds = %140
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @memcpy(i32* %160, i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %146, %140
  %165 = load i32, i32* %14, align 4
  %166 = load i32*, i32** %12, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %12, align 8
  br label %169

169:                                              ; preds = %164, %139
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %171 = icmp ne %struct.TYPE_14__* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  br label %203

173:                                              ; preds = %169
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 0, i32* %177, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32 0, i32* %185, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  store i32 1, i32* %189, align 4
  %190 = load %struct.TYPE_14__* (i32*, i32*, %struct.TYPE_14__*)*, %struct.TYPE_14__* (i32*, i32*, %struct.TYPE_14__*)** %9, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %193 = call %struct.TYPE_14__* %190(i32* %191, i32* %13, %struct.TYPE_14__* %192)
  store %struct.TYPE_14__* %193, %struct.TYPE_14__** %17, align 8
  %194 = icmp ne %struct.TYPE_14__* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %173
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %197 = call i32 @block_ChainAppend(%struct.TYPE_14__** %11, %struct.TYPE_14__* %196)
  br label %198

198:                                              ; preds = %195, %173
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = icmp ne %struct.TYPE_14__* %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  br label %203

202:                                              ; preds = %198
  br label %44

203:                                              ; preds = %201, %172, %105, %70, %44
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %205 = icmp ne %struct.TYPE_14__* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %208 = call i32 @block_Release(%struct.TYPE_14__* %207)
  br label %209

209:                                              ; preds = %206, %203
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %210, %struct.TYPE_14__** %5, align 8
  br label %211

211:                                              ; preds = %209, %33, %24
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %212
}

declare dso_local i32 @block_Release(%struct.TYPE_14__*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @block_Realloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_14__**, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
