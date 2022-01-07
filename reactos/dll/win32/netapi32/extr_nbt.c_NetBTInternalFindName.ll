; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTInternalFindName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTInternalFindName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i8* }

@NRC_GOODRET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"adapter %p, ncb %p, cacheEntry %p\0A\00", align 1
@NRC_BADDR = common dso_local global i32 0, align 4
@NRC_NOWILD = common dso_local global i32 0, align 4
@gNameCache = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@WSA_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@NRC_OSRESNOTAV = common dso_local global i32 0, align 4
@gNumWINSServers = common dso_local global i32 0, align 4
@gWINSServers = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@gWINSQueryTimeout = common dso_local global i32 0, align 4
@gWINSQueries = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@gBCastQueryTimeout = common dso_local global i32 0, align 4
@gBCastQueries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32**)* @NetBTInternalFindName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NetBTInternalFindName(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %13 = load i32, i32* @NRC_GOODRET, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %14, %struct.TYPE_10__* %15, i32** %16)
  %18 = load i32**, i32*** %7, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @NRC_BADDR, align 4
  store i32 %21, i32* %4, align 4
  br label %217

22:                                               ; preds = %3
  %23 = load i32**, i32*** %7, align 8
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @NRC_BADDR, align 4
  store i32 %27, i32* %4, align 4
  br label %217

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @NRC_BADDR, align 4
  store i32 %32, i32* %4, align 4
  br label %217

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 42
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @NRC_NOWILD, align 4
  store i32 %42, i32* %8, align 4
  br label %211

43:                                               ; preds = %33
  %44 = load i32, i32* @gNameCache, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32* @NBNameCacheFindEntry(i32 %44, i8* %47)
  %49 = load i32**, i32*** %7, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32* @NBNameCacheFindEntry(i32 %56, i8* %59)
  %61 = load i32**, i32*** %7, align 8
  store i32* %60, i32** %61, align 8
  br label %62

62:                                               ; preds = %53, %43
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %210, label %66

66:                                               ; preds = %62
  store i32* null, i32** %9, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @NetBTinetResolve(i8* %69, i32** %9)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @NRC_GOODRET, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @NetBTStoreCacheEntry(i32* @gNameCache, i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @NRC_GOODRET, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32* null, i32** %9, align 8
  br label %84

84:                                               ; preds = %83, %77
  br label %207

85:                                               ; preds = %74, %66
  %86 = load i32, i32* @PF_INET, align 4
  %87 = load i32, i32* @SOCK_DGRAM, align 4
  %88 = load i32, i32* @IPPROTO_UDP, align 4
  %89 = load i32, i32* @WSA_FLAG_OVERLAPPED, align 4
  %90 = call i64 @WSASocketA(i32 %86, i32 %87, i32 %88, i32* null, i32 0, i32 %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @INVALID_SOCKET, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @NRC_OSRESNOTAV, align 4
  store i32 %95, i32* %8, align 4
  br label %206

96:                                               ; preds = %85
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %128, %96
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @NRC_GOODRET, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32**, i32*** %7, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @gNumWINSServers, align 4
  %112 = icmp slt i32 %110, %111
  br label %113

113:                                              ; preds = %109, %105, %101
  %114 = phi i1 [ false, %105 ], [ false, %101 ], [ %112, %109 ]
  br i1 %114, label %115, label %131

115:                                              ; preds = %113
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = load i32*, i32** @gWINSServers, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @FALSE, align 4
  %125 = load i32, i32* @gWINSQueryTimeout, align 4
  %126 = load i32, i32* @gWINSQueries, align 4
  %127 = call i32 @NetBTNameWaitLoop(%struct.TYPE_11__* %116, i64 %117, %struct.TYPE_10__* %118, i32 %123, i32 %124, i32 %125, i32 %126, i32** %9)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %115
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %101

131:                                              ; preds = %113
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @NRC_GOODRET, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load i32*, i32** %9, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @NetBTStoreCacheEntry(i32* @gNameCache, i32* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @NRC_GOODRET, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32* null, i32** %9, align 8
  br label %145

145:                                              ; preds = %144, %138
  br label %146

146:                                              ; preds = %145, %135, %131
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @NRC_GOODRET, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %203

150:                                              ; preds = %146
  %151 = load i32**, i32*** %7, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %203

154:                                              ; preds = %150
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %158, %162
  store i32 %163, i32* %12, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %154
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %12, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %169, %154
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %179 = load i64, i64* %10, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @TRUE, align 4
  %183 = load i32, i32* @gBCastQueryTimeout, align 4
  %184 = load i32, i32* @gBCastQueries, align 4
  %185 = call i32 @NetBTNameWaitLoop(%struct.TYPE_11__* %178, i64 %179, %struct.TYPE_10__* %180, i32 %181, i32 %182, i32 %183, i32 %184, i32** %9)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @NRC_GOODRET, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %177
  %190 = load i32*, i32** %9, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32*, i32** %9, align 8
  %196 = call i32 @NetBTStoreCacheEntry(i32* %194, i32* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @NRC_GOODRET, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  store i32* null, i32** %9, align 8
  br label %201

201:                                              ; preds = %200, %192
  br label %202

202:                                              ; preds = %201, %189, %177
  br label %203

203:                                              ; preds = %202, %150, %146
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @closesocket(i64 %204)
  br label %206

206:                                              ; preds = %203, %94
  br label %207

207:                                              ; preds = %206, %84
  %208 = load i32*, i32** %9, align 8
  %209 = load i32**, i32*** %7, align 8
  store i32* %208, i32** %209, align 8
  br label %210

210:                                              ; preds = %207, %62
  br label %211

211:                                              ; preds = %210, %41
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to %struct.TYPE_11__*
  %215 = call i32 (i8*, %struct.TYPE_11__*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %214)
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %211, %31, %26, %20
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i32* @NBNameCacheFindEntry(i32, i8*) #1

declare dso_local i32 @NetBTinetResolve(i8*, i32**) #1

declare dso_local i32 @NetBTStoreCacheEntry(i32*, i32*) #1

declare dso_local i64 @WSASocketA(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NetBTNameWaitLoop(%struct.TYPE_11__*, i64, %struct.TYPE_10__*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
