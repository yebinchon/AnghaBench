; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_Block.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_Block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i32*, i32*, i64 }

@MMS_PACKET_MEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*, i32*)* @Block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @Block(%struct.TYPE_8__* %0, i32* noalias %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  store i32 1, i32* %20, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %175

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call %struct.TYPE_9__* @block_Alloc(i64 %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %8, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %175

42:                                               ; preds = %29
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @memcpy(i32* %45, i32* %52, i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %3, align 8
  br label %175

61:                                               ; preds = %21
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %170

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @__MAX(i64 %72, i64 %75)
  %77 = icmp slt i64 %69, %76
  br i1 %77, label %78, label %170

78:                                               ; preds = %66
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %89, %92
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %86, %78
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @__MAX(i64 %97, i64 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %94
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @__MAX(i64 %112, i64 %115)
  %117 = sub i64 %109, %116
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %106, %94
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %119, %120
  %122 = call %struct.TYPE_9__* @block_Alloc(i64 %121)
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %11, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %124 = icmp ne %struct.TYPE_9__* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %175

126:                                              ; preds = %118
  %127 = load i64, i64* %9, align 8
  %128 = icmp ugt i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @memcpy(i32* %133, i32* %140, i64 %141)
  br label %143

143:                                              ; preds = %129, %126
  %144 = load i64, i64* %10, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @memset(i32* %151, i32 0, i64 %152)
  br label %154

154:                                              ; preds = %146, %143
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %155, %156
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %10, align 8
  %164 = add i64 %162, %163
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %169, %struct.TYPE_9__** %3, align 8
  br label %175

170:                                              ; preds = %66, %61
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = load i32, i32* @MMS_PACKET_MEDIA, align 4
  %174 = call i32 @mms_HeaderMediaRead(%struct.TYPE_8__* %172, i32 %173)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %175

175:                                              ; preds = %171, %154, %125, %42, %41, %19
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %176
}

declare dso_local %struct.TYPE_9__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @__MAX(i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @mms_HeaderMediaRead(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
