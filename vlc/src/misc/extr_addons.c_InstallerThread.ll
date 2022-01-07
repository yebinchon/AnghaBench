; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_InstallerThread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_addons.c_InstallerThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__, i64, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_23__**, i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* }

@installer_thread_interrupted = common dso_local global i32 0, align 4
@ADDON_INSTALLED = common dso_local global i64 0, align 8
@ADDON_UNINSTALLING = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@ADDON_NOTINSTALLED = common dso_local global i64 0, align 8
@ADDON_INSTALLING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @InstallerThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @InstallerThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %3, align 8
  %9 = call i32 (...) @vlc_savecancel()
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vlc_interrupt_set(i32 %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = call i32 @vlc_mutex_lock(i32* %21)
  br label %23

23:                                               ; preds = %182, %1
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %203

31:                                               ; preds = %23
  %32 = load i32, i32* @installer_thread_interrupted, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @vlc_interrupt_register(i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %54, %31
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %44, %35
  %53 = phi i1 [ false, %35 ], [ %51, %44 ]
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = call i32 @vlc_cond_wait(i32* %59, i32* %64)
  br label %35

66:                                               ; preds = %52
  %67 = call i32 (...) @vlc_interrupt_unregister()
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %203

76:                                               ; preds = %66
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %83, i64 0
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %84, align 8
  store %struct.TYPE_23__* %85, %struct.TYPE_23__** %6, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = bitcast %struct.TYPE_18__* %90 to { %struct.TYPE_23__**, i32 }*
  %92 = getelementptr inbounds { %struct.TYPE_23__**, i32 }, { %struct.TYPE_23__**, i32 }* %91, i32 0, i32 0
  %93 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %92, align 8
  %94 = getelementptr inbounds { %struct.TYPE_23__**, i32 }, { %struct.TYPE_23__**, i32 }* %91, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ARRAY_REMOVE(%struct.TYPE_23__** %93, i32 %95, i32 0)
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = call i32 @addon_entry_Hold(%struct.TYPE_23__* %97)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = call i32 @vlc_mutex_unlock(i32* %103)
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = call i32 @vlc_mutex_lock(i32* %106)
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ADDON_INSTALLED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %144

113:                                              ; preds = %76
  %114 = load i64, i64* @ADDON_UNINSTALLING, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = call i32 @vlc_mutex_unlock(i32* %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %122, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = call i32 %123(%struct.TYPE_22__* %124, %struct.TYPE_23__* %125)
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %129 = call i32 @installOrRemoveAddon(%struct.TYPE_22__* %127, %struct.TYPE_23__* %128, i32 0)
  store i32 %129, i32* %5, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = call i32 @vlc_mutex_lock(i32* %131)
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @VLC_SUCCESS, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %113
  %137 = load i64, i64* @ADDON_NOTINSTALLED, align 8
  br label %140

138:                                              ; preds = %113
  %139 = load i64, i64* @ADDON_INSTALLED, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i64 [ %137, %136 ], [ %139, %138 ]
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %182

144:                                              ; preds = %76
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ADDON_NOTINSTALLED, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %181

150:                                              ; preds = %144
  %151 = load i64, i64* @ADDON_INSTALLING, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  %156 = call i32 @vlc_mutex_unlock(i32* %155)
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %159, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %163 = call i32 %160(%struct.TYPE_22__* %161, %struct.TYPE_23__* %162)
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %166 = call i32 @installOrRemoveAddon(%struct.TYPE_22__* %164, %struct.TYPE_23__* %165, i32 1)
  store i32 %166, i32* %5, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  %169 = call i32 @vlc_mutex_lock(i32* %168)
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @VLC_SUCCESS, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %150
  %174 = load i64, i64* @ADDON_INSTALLED, align 8
  br label %177

175:                                              ; preds = %150
  %176 = load i64, i64* @ADDON_NOTINSTALLED, align 8
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i64 [ %174, %173 ], [ %176, %175 ]
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %177, %144
  br label %182

182:                                              ; preds = %181, %140
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = call i32 @vlc_mutex_unlock(i32* %184)
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %188, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %192 = call i32 %189(%struct.TYPE_22__* %190, %struct.TYPE_23__* %191)
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %194 = call i32 @addon_entry_Release(%struct.TYPE_23__* %193)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %196 = call i32 @addons_manager_WriteCatalog(%struct.TYPE_22__* %195)
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = call i32 @vlc_mutex_lock(i32* %201)
  br label %23

203:                                              ; preds = %75, %23
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = call i32 @vlc_mutex_unlock(i32* %208)
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @vlc_restorecancel(i32 %210)
  ret i8* null
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_interrupt_set(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_interrupt_register(i32, i8*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_interrupt_unregister(...) #1

declare dso_local i32 @ARRAY_REMOVE(%struct.TYPE_23__**, i32, i32) #1

declare dso_local i32 @addon_entry_Hold(%struct.TYPE_23__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @installOrRemoveAddon(%struct.TYPE_22__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @addon_entry_Release(%struct.TYPE_23__*) #1

declare dso_local i32 @addons_manager_WriteCatalog(%struct.TYPE_22__*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
