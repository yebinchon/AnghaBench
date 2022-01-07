; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_StorageImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_StorageImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, i32, i32*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_13__, i32, i32, i32, i32*, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@STG_E_INVALIDFLAG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@StorageImpl_Vtbl = common dso_local global i32 0, align 4
@IPropertySetStorage_Vtbl = common dso_local global i32 0, align 4
@DirectWriterLockVtbl = common dso_local global i32 0, align 4
@StorageImpl_BaseVtbl = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_DIRECT_SWMR = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@SWMR_Writer = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@SWMR_Reader = common dso_local global i32 0, align 4
@SWMR_None = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DEF_SMALL_BLOCK_SIZE = common dso_local global i32 0, align 4
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@WINE_LOCK_READ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32*, i32, i32, i32, i32, %struct.TYPE_16__**)* @StorageImpl_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StorageImpl_Construct(i64 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_16__** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__**, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_17__, align 4
  store i64 %0, i64* %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_16__** %7, %struct.TYPE_16__*** %17, align 8
  %21 = load i32, i32* @S_OK, align 4
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @validateSTGM(i32 %22)
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = load i32, i32* @STG_E_INVALIDFLAG, align 4
  store i32 %27, i32* %9, align 4
  br label %191

28:                                               ; preds = %8
  %29 = call i32 (...) @GetProcessHeap()
  %30 = call %struct.TYPE_16__* @HeapAlloc(i32 %29, i32 0, i32 88)
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %18, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %32 = icmp ne %struct.TYPE_16__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %34, i32* %9, align 4
  br label %191

35:                                               ; preds = %28
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %37 = call i32 @memset(%struct.TYPE_16__* %36, i32 0, i32 88)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 10
  %41 = call i32 @list_init(i32* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 9
  %45 = call i32 @list_init(i32* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32* @StorageImpl_Vtbl, i32** %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32* @IPropertySetStorage_Vtbl, i32** %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store i32* @DirectWriterLockVtbl, i32** %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 6
  store i32* @StorageImpl_BaseVtbl, i32** %60, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @STGM_CREATE, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @STGM_DIRECT_SWMR, align 4
  %77 = load i32, i32* @STGM_READWRITE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @STGM_SHARE_DENY_WRITE, align 4
  %80 = or i32 %78, %79
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %35
  %83 = load i32, i32* @SWMR_Writer, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  br label %106

87:                                               ; preds = %35
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @STGM_DIRECT_SWMR, align 4
  %90 = load i32, i32* @STGM_READ, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %93 = or i32 %91, %92
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i32, i32* @SWMR_Reader, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 4
  br label %105

100:                                              ; preds = %87
  %101 = load i32, i32* @SWMR_None, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %82
  %107 = load i32, i32* @FALSE, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @DEF_SMALL_BLOCK_SIZE, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %106
  %120 = load i64, i64* %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = call i32 @FileLockBytesImpl_Construct(i64 %120, i32 %121, i32 %122, i32** %124)
  store i32 %125, i32* %19, align 4
  br label %132

126:                                              ; preds = %106
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @ILockBytes_AddRef(i32* %130)
  br label %132

132:                                              ; preds = %126, %119
  %133 = load i32, i32* %19, align 4
  %134 = call i64 @SUCCEEDED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @STATFLAG_NONAME, align 4
  %141 = call i32 @ILockBytes_Stat(i32* %139, %struct.TYPE_17__* %20, i32 %140)
  store i32 %141, i32* %19, align 4
  br label %142

142:                                              ; preds = %136, %132
  %143 = load i32, i32* %19, align 4
  %144 = call i64 @SUCCEEDED(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* @WINE_LOCK_READ, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %153, %146
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @StorageImpl_GrabLocks(%struct.TYPE_16__* %161, i32 %162)
  store i32 %163, i32* %19, align 4
  br label %164

164:                                              ; preds = %160, %142
  %165 = load i32, i32* %19, align 4
  %166 = call i64 @SUCCEEDED(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %170 = load i32, i32* @TRUE, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @StorageImpl_Refresh(%struct.TYPE_16__* %169, i32 %170, i32 %171)
  store i32 %172, i32* %19, align 4
  br label %173

173:                                              ; preds = %168, %164
  %174 = load i32, i32* %19, align 4
  %175 = call i64 @FAILED(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = call i32 @IStorage_Release(%struct.TYPE_13__* %180)
  %182 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %182, align 8
  br label %189

183:                                              ; preds = %173
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = call i32 @StorageImpl_Flush(%struct.TYPE_18__* %185)
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %188 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %17, align 8
  store %struct.TYPE_16__* %187, %struct.TYPE_16__** %188, align 8
  br label %189

189:                                              ; preds = %183, %177
  %190 = load i32, i32* %19, align 4
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %189, %33, %26
  %192 = load i32, i32* %9, align 4
  ret i32 %192
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @validateSTGM(i32) #1

declare dso_local %struct.TYPE_16__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @FileLockBytesImpl_Construct(i64, i32, i32, i32**) #1

declare dso_local i32 @ILockBytes_AddRef(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ILockBytes_Stat(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @StorageImpl_GrabLocks(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @StorageImpl_Refresh(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @IStorage_Release(%struct.TYPE_13__*) #1

declare dso_local i32 @StorageImpl_Flush(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
