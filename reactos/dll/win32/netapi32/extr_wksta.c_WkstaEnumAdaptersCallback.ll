; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_wksta.c_WkstaEnumAdaptersCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_wksta.c_WkstaEnumAdaptersCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.WkstaTransportEnumData = type { i64, i32, i32, i64*, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i64, i64 }
%struct.TYPE_10__ = type { i32 }

@MAX_TRANSPORT_NAME = common dso_local global i32 0, align 4
@MAX_TRANSPORT_ADDR = common dso_local global i32 0, align 4
@MAX_PREFERRED_LENGTH = common dso_local global i32 0, align 4
@TRANSPORT_NBT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"%d of %d:ti at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"transport_name at %p %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"transport_address at %p %s\0A\00", align 1
@NERR_Success = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i32, %struct.TYPE_9__*, i8*)* @WkstaEnumAdaptersCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @WkstaEnumAdaptersCallback(i64 %0, i64 %1, i32 %2, %struct.TYPE_9__* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.WkstaTransportEnumData*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_10__, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.WkstaTransportEnumData*
  store %struct.WkstaTransportEnumData* %20, %struct.WkstaTransportEnumData** %12, align 8
  %21 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %22 = icmp ne %struct.WkstaTransportEnumData* %21, null
  br i1 %22, label %23, label %225

23:                                               ; preds = %5
  %24 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %25 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %225

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %34 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %36 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @MAX_TRANSPORT_NAME, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = add i64 4, %40
  %42 = load i32, i32* @MAX_TRANSPORT_ADDR, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 %41, %44
  %46 = mul i64 %37, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %49 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %55 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %31
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %60 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = bitcast i64* %61 to i32*
  %63 = call i32 @NetApiBufferAllocate(i32 %58, i32* %62)
  br label %64

64:                                               ; preds = %57, %28
  %65 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %66 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %219

70:                                               ; preds = %64
  %71 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %72 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MAX_PREFERRED_LENGTH, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %14, align 8
  br label %90

78:                                               ; preds = %70
  %79 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %80 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i32, i32* @MAX_TRANSPORT_NAME, align 4
  %84 = load i32, i32* @MAX_TRANSPORT_ADDR, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = add i64 4, %87
  %89 = udiv i64 %82, %88
  store i64 %89, i64* %14, align 8
  br label %90

90:                                               ; preds = %78, %76
  %91 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %92 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %213

96:                                               ; preds = %90
  %97 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %98 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %97, i32 0, i32 3
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %102 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = mul i64 %103, 4
  %105 = add i64 %100, %104
  %106 = inttoptr i64 %105 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %15, align 8
  %107 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %108 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %107, i32 0, i32 3
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = mul i64 %111, 4
  %113 = add i64 %110, %112
  %114 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %115 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @MAX_TRANSPORT_NAME, align 4
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %116, %118
  %120 = mul i64 %119, 4
  %121 = add i64 %113, %120
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %16, align 8
  %123 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %124 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i32, i32* @MAX_TRANSPORT_NAME, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = add i64 4, %130
  %132 = mul i64 %127, %131
  %133 = add i64 %126, %132
  %134 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %135 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @MAX_TRANSPORT_ADDR, align 4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %136, %138
  %140 = mul i64 %139, 4
  %141 = add i64 %133, %140
  %142 = inttoptr i64 %141 to i8*
  store i8* %142, i8** %17, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = call i32 @GetIfEntry(%struct.TYPE_10__* %18)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 4
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @MAX_TRANSPORT_NAME, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @wprint_name(i8* %157, i32 %158, i32 %159, %struct.TYPE_10__* %18)
  %161 = load i8*, i8** %17, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* @MAX_TRANSPORT_ADDR, align 4
  %168 = call i32 @wprint_mac(i8* %166, i32 %167, %struct.TYPE_10__* %18)
  %169 = load i32, i32* @TRANSPORT_NBT, align 4
  %170 = call i32 @memcmp(i32* %8, i32 %169, i32 4)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %96
  %173 = load i8*, i8** @TRUE, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  br label %180

176:                                              ; preds = %96
  %177 = load i8*, i8** @FALSE, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %176, %172
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %184 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %181, i64 %182, %struct.TYPE_8__* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @debugstr_w(i8* %191)
  %193 = sext i32 %192 to i64
  %194 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %188, i64 %193)
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @debugstr_w(i8* %201)
  %203 = sext i32 %202 to i64
  %204 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %198, i64 %203)
  %205 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %206 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %206, align 8
  %209 = load i32, i32* @NERR_Success, align 4
  %210 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %211 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  %212 = load i8*, i8** @TRUE, align 8
  store i8* %212, i8** %11, align 8
  br label %218

213:                                              ; preds = %90
  %214 = load i32, i32* @ERROR_MORE_DATA, align 4
  %215 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %216 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  %217 = load i8*, i8** @FALSE, align 8
  store i8* %217, i8** %11, align 8
  br label %218

218:                                              ; preds = %213, %180
  br label %224

219:                                              ; preds = %64
  %220 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %221 = load %struct.WkstaTransportEnumData*, %struct.WkstaTransportEnumData** %12, align 8
  %222 = getelementptr inbounds %struct.WkstaTransportEnumData, %struct.WkstaTransportEnumData* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load i8*, i8** @FALSE, align 8
  store i8* %223, i8** %11, align 8
  br label %224

224:                                              ; preds = %219, %218
  br label %227

225:                                              ; preds = %23, %5
  %226 = load i8*, i8** @FALSE, align 8
  store i8* %226, i8** %11, align 8
  br label %227

227:                                              ; preds = %225, %224
  %228 = load i8*, i8** %11, align 8
  ret i8* %228
}

declare dso_local i32 @NetApiBufferAllocate(i32, i32*) #1

declare dso_local i32 @GetIfEntry(%struct.TYPE_10__*) #1

declare dso_local i32 @wprint_name(i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @wprint_mac(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
