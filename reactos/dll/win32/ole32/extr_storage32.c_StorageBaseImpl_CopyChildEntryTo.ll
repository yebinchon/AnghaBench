; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_StorageBaseImpl_CopyChildEntryTo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_StorageBaseImpl_CopyChildEntryTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DIRENTRY_NULL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@STGTY_STORAGE = common dso_local global i64 0, align 8
@STGM_FAILIFTHERE = common dso_local global i32 0, align 4
@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STG_E_FILEALREADYEXISTS = common dso_local global i64 0, align 8
@STGTY_STREAM = common dso_local global i64 0, align 8
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<-- %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32, i32, i32**, i32*)* @StorageBaseImpl_CopyChildEntryTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @StorageBaseImpl_CopyChildEntryTo(i32* %0, i64 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca i32**, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @DIRENTRY_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i64, i64* @S_OK, align 8
  store i64 %28, i64* %7, align 8
  br label %208

29:                                               ; preds = %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @StorageBaseImpl_ReadDirEntry(i32* %30, i64 %31, %struct.TYPE_9__* %14)
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %15, align 8
  store i64 %37, i64* %7, align 8
  br label %208

38:                                               ; preds = %29
  %39 = load i32**, i32*** %12, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32**, i32*** %12, align 8
  store i32** %42, i32*** %21, align 8
  br label %43

43:                                               ; preds = %62, %41
  %44 = load i32**, i32*** %21, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32**, i32*** %21, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @wcscmp(i32 %55, i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i32**, i32*** %21, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i32 1
  store i32** %64, i32*** %21, align 8
  br label %43

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %178, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @STGTY_STORAGE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %112

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %112, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %82 = load i32, i32* @STGM_WRITE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @IStorage_CreateStorage(i32* %78, i32 %80, i32 %85, i32 0, i32 0, i32** %17)
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @STG_E_FILEALREADYEXISTS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %77
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @STGM_WRITE, align 4
  %95 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %96 = or i32 %94, %95
  %97 = call i64 @IStorage_OpenStorage(i32* %91, i32 %93, i32* null, i32 %96, i32* null, i32 0, i32** %17)
  store i64 %97, i64* %15, align 8
  br label %98

98:                                               ; preds = %90, %77
  %99 = load i64, i64* %15, align 8
  %100 = call i64 @SUCCEEDED(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %17, align 8
  %108 = call i64 @StorageBaseImpl_CopyStorageEntryTo(i32* %103, i64 %104, i32 %105, i32 %106, i32* null, i32* %107)
  store i64 %108, i64* %15, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @IStorage_Release(i32* %109)
  br label %111

111:                                              ; preds = %102, %98
  br label %177

112:                                              ; preds = %74, %69
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @STGTY_STREAM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %176

117:                                              ; preds = %112
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %176, label %120

120:                                              ; preds = %117
  %121 = load i32*, i32** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @STGM_CREATE, align 4
  %125 = load i32, i32* @STGM_WRITE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %128 = or i32 %126, %127
  %129 = call i64 @IStorage_CreateStream(i32* %121, i32 %123, i32 %128, i32 0, i32 0, i32** %19)
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %120
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* @STGM_READ, align 4
  %136 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %137 = or i32 %135, %136
  %138 = load i64, i64* %9, align 8
  %139 = call %struct.TYPE_7__* @StgStreamImpl_Construct(i32* %134, i32 %137, i64 %138)
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %22, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %141 = icmp ne %struct.TYPE_7__* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %133
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32* %144, i32** %18, align 8
  %145 = load i32*, i32** %18, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32*, i32** %18, align 8
  %149 = call i32 @IStream_AddRef(i32* %148)
  br label %150

150:                                              ; preds = %147, %142
  br label %153

151:                                              ; preds = %133
  store i32* null, i32** %18, align 8
  %152 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %152, i64* %15, align 8
  br label %153

153:                                              ; preds = %151, %150
  br label %154

154:                                              ; preds = %153, %120
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* @S_OK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = load i32*, i32** %18, align 8
  %160 = load i32, i32* @STATFLAG_NONAME, align 4
  %161 = call i32 @IStream_Stat(i32* %159, %struct.TYPE_8__* %20, i32 %160)
  %162 = load i32*, i32** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @IStream_SetSize(i32* %162, i32 %164)
  %166 = load i32*, i32** %18, align 8
  %167 = load i32*, i32** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @IStream_CopyTo(i32* %166, i32* %167, i32 %169, i32* null, i32* null)
  store i64 %170, i64* %15, align 8
  %171 = load i32*, i32** %18, align 8
  %172 = call i32 @IStream_Release(i32* %171)
  br label %173

173:                                              ; preds = %158, %154
  %174 = load i32*, i32** %19, align 8
  %175 = call i32 @IStream_Release(i32* %174)
  br label %176

176:                                              ; preds = %173, %117, %112
  br label %177

177:                                              ; preds = %176, %111
  br label %178

178:                                              ; preds = %177, %66
  %179 = load i64, i64* %15, align 8
  %180 = call i64 @SUCCEEDED(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32**, i32*** %12, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = call i64 @StorageBaseImpl_CopyChildEntryTo(i32* %183, i64 %185, i32 %186, i32 %187, i32** %188, i32* %189)
  store i64 %190, i64* %15, align 8
  br label %191

191:                                              ; preds = %182, %178
  %192 = load i64, i64* %15, align 8
  %193 = call i64 @SUCCEEDED(i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load i32*, i32** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32**, i32*** %12, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = call i64 @StorageBaseImpl_CopyChildEntryTo(i32* %196, i64 %198, i32 %199, i32 %200, i32** %201, i32* %202)
  store i64 %203, i64* %15, align 8
  br label %204

204:                                              ; preds = %195, %191
  %205 = load i64, i64* %15, align 8
  %206 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %205)
  %207 = load i64, i64* %15, align 8
  store i64 %207, i64* %7, align 8
  br label %208

208:                                              ; preds = %204, %36, %27
  %209 = load i64, i64* %7, align 8
  ret i64 %209
}

declare dso_local i64 @StorageBaseImpl_ReadDirEntry(i32*, i64, %struct.TYPE_9__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @wcscmp(i32, i32*) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i32, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @StorageBaseImpl_CopyStorageEntryTo(i32*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i32, i32, i32, i32, i32**) #1

declare dso_local %struct.TYPE_7__* @StgStreamImpl_Construct(i32*, i32, i64) #1

declare dso_local i32 @IStream_AddRef(i32*) #1

declare dso_local i32 @IStream_Stat(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @IStream_SetSize(i32*, i32) #1

declare dso_local i64 @IStream_CopyTo(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
