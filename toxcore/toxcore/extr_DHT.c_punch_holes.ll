; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_punch_holes.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_punch_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@MAX_FRIEND_CLIENTS = common dso_local global i64 0, align 8
@MAX_PUNCHING_PORTS = common dso_local global i32 0, align 4
@MAX_NORMAL_PUNCHING_TRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i64*, i64, i64)* @punch_holes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @punch_holes(%struct.TYPE_10__* %0, i32 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @MAX_FRIEND_CLIENTS, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %5
  br label %238

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MAX_PUNCHING_PORTS, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %12, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %54, %26
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i64, i64* %13, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %41

57:                                               ; preds = %52, %41
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %63 = call i32 @ip_copy(i32* %62, i32* %7)
  %64 = load i64, i64* %13, align 8
  %65 = call i8* @htons(i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i8* %65, i8** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = bitcast %struct.TYPE_9__* %14 to { i8*, i32 }*
  %78 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %77, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @send_ping_request(i32 %69, i8* %79, i32 %81, i32 %76)
  br label %151

83:                                               ; preds = %57
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %11, align 8
  br label %93

93:                                               ; preds = %138, %83
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %141

97:                                               ; preds = %93
  %98 = load i64*, i64** %8, align 8
  %99 = load i64, i64* %11, align 8
  %100 = udiv i64 %99, 2
  %101 = load i64, i64* %9, align 8
  %102 = urem i64 %100, %101
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %9, align 8
  %107 = mul i64 2, %106
  %108 = udiv i64 %105, %107
  %109 = load i64, i64* %11, align 8
  %110 = urem i64 %109, 2
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 -1, i32 1
  %114 = sext i32 %113 to i64
  %115 = mul i64 %108, %114
  %116 = add i64 %104, %115
  store i64 %116, i64* %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %118 = call i32 @ip_copy(i32* %117, i32* %7)
  %119 = load i64, i64* %15, align 8
  %120 = call i8* @htons(i64 %119)
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i8* %120, i8** %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = bitcast %struct.TYPE_9__* %16 to { i8*, i32 }*
  %133 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %132, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @send_ping_request(i32 %124, i8* %134, i32 %136, i32 %131)
  br label %138

138:                                              ; preds = %97
  %139 = load i64, i64* %11, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %11, align 8
  br label %93

141:                                              ; preds = %93
  %142 = load i64, i64* %11, align 8
  %143 = trunc i64 %142 to i32
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i32 %143, i32* %150, align 8
  br label %151

151:                                              ; preds = %141, %61
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @MAX_NORMAL_PUNCHING_TRIES, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %228

162:                                              ; preds = %151
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @MAX_PUNCHING_PORTS, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %12, align 8
  store i64 1024, i64* %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %175 = call i32 @ip_copy(i32* %174, i32* %7)
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load i64, i64* %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %11, align 8
  br label %185

185:                                              ; preds = %211, %162
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %12, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %214

189:                                              ; preds = %185
  %190 = load i64, i64* %17, align 8
  %191 = load i64, i64* %11, align 8
  %192 = add i64 %190, %191
  %193 = call i8* @htons(i64 %192)
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8* %193, i8** %194, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = bitcast %struct.TYPE_9__* %18 to { i8*, i32 }*
  %206 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %205, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @send_ping_request(i32 %197, i8* %207, i32 %209, i32 %204)
  br label %211

211:                                              ; preds = %189
  %212 = load i64, i64* %11, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %11, align 8
  br label %185

214:                                              ; preds = %185
  %215 = load i64, i64* %11, align 8
  %216 = load i32, i32* @MAX_PUNCHING_PORTS, align 4
  %217 = sdiv i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = sub i64 %215, %218
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i64, i64* %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  store i32 %220, i32* %227, align 8
  br label %228

228:                                              ; preds = %214, %151
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = load i64, i64* %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %235, align 8
  br label %238

238:                                              ; preds = %228, %25
  ret void
}

declare dso_local i32 @ip_copy(i32*, i32*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @send_ping_request(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
