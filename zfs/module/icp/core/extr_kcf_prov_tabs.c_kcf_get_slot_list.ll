; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_get_slot_list.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_tabs.c_kcf_get_slot_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }

@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@prov_tab_mutex = common dso_local global i32 0, align 4
@KCF_MAX_PROVIDERS = common dso_local global i64 0, align 8
@prov_tab = common dso_local global %struct.TYPE_11__** null, align 8
@CRYPTO_HW_PROVIDER = common dso_local global i64 0, align 8
@CRYPTO_HIDE_PROVIDER = common dso_local global i32 0, align 4
@CRYPTO_LOGICAL_PROVIDER = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcf_get_slot_list(i64* %0, %struct.TYPE_11__*** %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_11__***, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_11__*** %1, %struct.TYPE_11__**** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_11__** null, %struct.TYPE_11__*** %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %17, i32* %13, align 4
  %18 = call i32 @mutex_enter(i32* @prov_tab_mutex)
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %64, %3
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @KCF_MAX_PROVIDERS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @prov_tab, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 %25
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %7, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CRYPTO_HW_PROVIDER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CRYPTO_HIDE_PROVIDER, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42, %35
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = call i64 @KCF_IS_PROV_USABLE(%struct.TYPE_11__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = call i64 @KCF_IS_PROV_UNVERIFIED(%struct.TYPE_11__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %48
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %59, %55, %52
  br label %63

63:                                               ; preds = %62, %42, %23
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %19

67:                                               ; preds = %19
  %68 = call i32 @mutex_exit(i32* @prov_tab_mutex)
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %185

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  %74 = mul i64 %73, 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %132, %72
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* @KM_SLEEP, align 4
  %78 = call %struct.TYPE_11__** @kmem_zalloc(i64 %76, i32 %77)
  store %struct.TYPE_11__** %78, %struct.TYPE_11__*** %8, align 8
  %79 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %79, i64 %81
  %83 = bitcast %struct.TYPE_11__** %82 to i8*
  store i8* %83, i8** %9, align 8
  %84 = call i32 @mutex_enter(i32* @prov_tab_mutex)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %85

85:                                               ; preds = %151, %75
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @KCF_MAX_PROVIDERS, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %154

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @prov_tab, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %90, i64 %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %7, align 8
  %94 = icmp ne %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %150

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CRYPTO_HW_PROVIDER, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CRYPTO_HIDE_PROVIDER, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CRYPTO_LOGICAL_PROVIDER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %150

114:                                              ; preds = %108, %101
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = call i64 @KCF_IS_PROV_USABLE(%struct.TYPE_11__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %118
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %123 = call i64 @KCF_IS_PROV_UNVERIFIED(%struct.TYPE_11__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %121, %114
  %126 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %126, i64 %127
  %129 = bitcast %struct.TYPE_11__** %128 to i8*
  %130 = load i8*, i8** %9, align 8
  %131 = icmp ugt i8* %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = call i32 @mutex_exit(i32* @prov_tab_mutex)
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %136 = call i32 @kcf_free_provider_tab(i64 %134, %struct.TYPE_11__** %135)
  %137 = load i64, i64* %14, align 8
  %138 = shl i64 %137, 1
  store i64 %138, i64* %14, align 8
  %139 = load i64, i64* %10, align 8
  %140 = shl i64 %139, 1
  store i64 %140, i64* %10, align 8
  br label %75

141:                                              ; preds = %125
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %143, i64 %144
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %146, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_11__* %147)
  br label %149

149:                                              ; preds = %141, %121, %118
  br label %150

150:                                              ; preds = %149, %108, %89
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %11, align 8
  br label %85

154:                                              ; preds = %85
  %155 = call i32 @mutex_exit(i32* @prov_tab_mutex)
  %156 = load i64, i64* %12, align 8
  %157 = mul i64 %156, 8
  store i64 %157, i64* %15, align 8
  %158 = load i64, i64* %12, align 8
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %14, align 8
  %161 = icmp ule i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @ASSERT(i32 %162)
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %14, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %154
  store i8* null, i8** %16, align 8
  %168 = load i64, i64* %15, align 8
  %169 = icmp ugt i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i64, i64* %15, align 8
  %172 = load i32, i32* @KM_SLEEP, align 4
  %173 = call i8* @kmem_alloc(i64 %171, i32 %172)
  store i8* %173, i8** %16, align 8
  %174 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %175 = load i8*, i8** %16, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @bcopy(%struct.TYPE_11__** %174, i8* %175, i64 %176)
  br label %178

178:                                              ; preds = %170, %167
  %179 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %180 = load i64, i64* %14, align 8
  %181 = call i32 @kmem_free(%struct.TYPE_11__** %179, i64 %180)
  %182 = load i8*, i8** %16, align 8
  %183 = bitcast i8* %182 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %183, %struct.TYPE_11__*** %8, align 8
  br label %184

184:                                              ; preds = %178, %154
  br label %185

185:                                              ; preds = %184, %71
  %186 = load i64, i64* %10, align 8
  %187 = load i64*, i64** %4, align 8
  store i64 %186, i64* %187, align 8
  %188 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %189 = load %struct.TYPE_11__***, %struct.TYPE_11__**** %5, align 8
  store %struct.TYPE_11__** %188, %struct.TYPE_11__*** %189, align 8
  %190 = load i32, i32* %13, align 4
  ret i32 %190
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @KCF_IS_PROV_USABLE(%struct.TYPE_11__*) #1

declare dso_local i64 @KCF_IS_PROV_UNVERIFIED(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local %struct.TYPE_11__** @kmem_zalloc(i64, i32) #1

declare dso_local i32 @kcf_free_provider_tab(i64, %struct.TYPE_11__**) #1

declare dso_local i32 @KCF_PROV_REFHOLD(%struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_11__**, i8*, i64) #1

declare dso_local i32 @kmem_free(%struct.TYPE_11__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
