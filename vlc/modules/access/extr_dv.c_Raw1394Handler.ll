; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_Raw1394Handler.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dv.c_Raw1394Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8, i8, i8, i32, i32)* @Raw1394Handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Raw1394Handler(i32 %0, i8* %1, i32 %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8 %3, i8* %13, align 1
  store i8 %4, i8* %14, align 1
  store i8 %5, i8* %15, align 1
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %20, align 8
  %25 = load i8, i8* %13, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 @VLC_UNUSED(i32 %26)
  %28 = load i8, i8* %14, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 @VLC_UNUSED(i32 %29)
  %31 = load i8, i8* %15, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 @VLC_UNUSED(i32 %32)
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @VLC_UNUSED(i32 %34)
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @VLC_UNUSED(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @raw1394_get_userdata(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %18, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %202

44:                                               ; preds = %8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %19, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ugt i32 %48, 16
  br i1 %49, label %50, label %201

50:                                               ; preds = %44
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 8
  store i8* %52, i8** %21, align 8
  %53 = load i8*, i8** %21, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = ashr i32 %56, 5
  store i32 %57, i32* %22, align 4
  %58 = load i8*, i8** %21, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 4
  store i32 %62, i32* %23, align 4
  %63 = load i8*, i8** %21, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %24, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i32 @vlc_mutex_lock(i32* %70)
  %72 = load i32, i32* %22, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %50
  %75 = load i32, i32* %23, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %74
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = call i32 @vlc_mutex_lock(i32* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = icmp ne %struct.TYPE_10__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %77
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = call i32 @block_ChainAppend(i32* %89, %struct.TYPE_10__* %94)
  br label %96

96:                                               ; preds = %87, %77
  %97 = call %struct.TYPE_10__* @block_Alloc(i32 144000)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i32* %103, i32** %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = call i32 @vlc_mutex_unlock(i32* %109)
  br label %111

111:                                              ; preds = %96, %74, %50
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %20, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %195

119:                                              ; preds = %111
  %120 = load i32, i32* %22, align 4
  switch i32 %120, label %191 [
    i32 0, label %121
    i32 1, label %131
    i32 2, label %145
    i32 3, label %159
    i32 4, label %174
  ]

121:                                              ; preds = %119
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %23, align 4
  %126 = mul nsw i32 %125, 150
  %127 = mul nsw i32 %126, 80
  %128 = add nsw i32 %124, %127
  %129 = load i8*, i8** %21, align 8
  %130 = call i32 @memcpy(i32 %128, i8* %129, i32 480)
  br label %194

131:                                              ; preds = %119
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %23, align 4
  %136 = mul nsw i32 %135, 150
  %137 = mul nsw i32 %136, 80
  %138 = add nsw i32 %134, %137
  %139 = load i32, i32* %24, align 4
  %140 = add nsw i32 1, %139
  %141 = mul nsw i32 %140, 80
  %142 = add nsw i32 %138, %141
  %143 = load i8*, i8** %21, align 8
  %144 = call i32 @memcpy(i32 %142, i8* %143, i32 480)
  br label %194

145:                                              ; preds = %119
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %23, align 4
  %150 = mul nsw i32 %149, 150
  %151 = mul nsw i32 %150, 80
  %152 = add nsw i32 %148, %151
  %153 = load i32, i32* %24, align 4
  %154 = add nsw i32 3, %153
  %155 = mul nsw i32 %154, 80
  %156 = add nsw i32 %152, %155
  %157 = load i8*, i8** %21, align 8
  %158 = call i32 @memcpy(i32 %156, i8* %157, i32 480)
  br label %194

159:                                              ; preds = %119
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %23, align 4
  %164 = mul nsw i32 %163, 150
  %165 = mul nsw i32 %164, 80
  %166 = add nsw i32 %162, %165
  %167 = load i32, i32* %24, align 4
  %168 = mul nsw i32 %167, 16
  %169 = add nsw i32 6, %168
  %170 = mul nsw i32 %169, 80
  %171 = add nsw i32 %166, %170
  %172 = load i8*, i8** %21, align 8
  %173 = call i32 @memcpy(i32 %171, i8* %172, i32 480)
  br label %194

174:                                              ; preds = %119
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %23, align 4
  %179 = mul nsw i32 %178, 150
  %180 = mul nsw i32 %179, 80
  %181 = add nsw i32 %177, %180
  %182 = load i32, i32* %24, align 4
  %183 = sdiv i32 %182, 15
  %184 = add nsw i32 7, %183
  %185 = load i32, i32* %24, align 4
  %186 = add nsw i32 %184, %185
  %187 = mul nsw i32 %186, 80
  %188 = add nsw i32 %181, %187
  %189 = load i8*, i8** %21, align 8
  %190 = call i32 @memcpy(i32 %188, i8* %189, i32 480)
  br label %194

191:                                              ; preds = %119
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %193 = call i32 @block_Release(%struct.TYPE_10__* %192)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %20, align 8
  br label %194

194:                                              ; preds = %191, %174, %159, %145, %131, %121
  br label %195

195:                                              ; preds = %194, %111
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = call i32 @vlc_mutex_unlock(i32* %199)
  br label %201

201:                                              ; preds = %195, %44
  store i32 0, i32* %9, align 4
  br label %202

202:                                              ; preds = %201, %43
  %203 = load i32, i32* %9, align 4
  ret i32 %203
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i64 @raw1394_get_userdata(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @block_ChainAppend(i32*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @block_Alloc(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
