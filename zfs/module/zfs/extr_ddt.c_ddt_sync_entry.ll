; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_sync_entry.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_sync_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_24__*, i32**, i32, i32 }
%struct.TYPE_24__ = type { i64, i64 }

@DDT_TYPE_CURRENT = common dso_local global i32 0, align 4
@DDT_PHYS_TYPES = common dso_local global i32 0, align 4
@DDT_PHYS_DITTO = common dso_local global i32 0, align 4
@DDT_CLASS_DUPLICATE = common dso_local global i32 0, align 4
@DDT_CLASS_UNIQUE = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i32)* @ddt_sync_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddt_sync_entry(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %9, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %10, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 6
  store i32* %27, i32** %11, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @DDT_TYPE_CURRENT, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %101, %4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @DDT_PHYS_TYPES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %46
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 4
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  br label %101

72:                                               ; preds = %50
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @DDT_PHYS_DITTO, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ddt_phys_free(%struct.TYPE_23__* %77, i32* %78, %struct.TYPE_24__* %79, i32 %80)
  br label %101

82:                                               ; preds = %72
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @ddt_phys_free(%struct.TYPE_23__* %88, i32* %89, %struct.TYPE_24__* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %93, %76, %65
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 1
  store %struct.TYPE_24__* %105, %struct.TYPE_24__** %10, align 8
  br label %46

106:                                              ; preds = %46
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = load i32, i32* @DDT_PHYS_DITTO, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @ASSERT0(i64 %114)
  %116 = load i32, i32* %16, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* @DDT_CLASS_DUPLICATE, align 4
  store i32 %119, i32* %15, align 4
  br label %122

120:                                              ; preds = %106
  %121 = load i32, i32* @DDT_CLASS_UNIQUE, align 4
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @DDT_TYPES, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %156

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %134, %130, %126
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = call i64 @ddt_object_remove(%struct.TYPE_23__* %138, i32 %139, i32 %140, %struct.TYPE_25__* %141, i32* %142)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @VERIFY(i32 %145)
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %151 = call i64 @ddt_object_lookup(%struct.TYPE_23__* %147, i32 %148, i32 %149, %struct.TYPE_25__* %150)
  %152 = load i64, i64* @ENOENT, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @ASSERT(i32 %154)
  br label %156

156:                                              ; preds = %137, %134, %122
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %204

159:                                              ; preds = %156
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %168 = call i32 @ddt_stat_update(%struct.TYPE_23__* %166, %struct.TYPE_25__* %167, i32 0)
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @ddt_object_exists(%struct.TYPE_23__* %169, i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %159
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @ddt_object_create(%struct.TYPE_23__* %175, i32 %176, i32 %177, i32* %178)
  br label %180

180:                                              ; preds = %174, %159
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = call i64 @ddt_object_update(%struct.TYPE_23__* %181, i32 %182, i32 %183, %struct.TYPE_25__* %184, i32* %185)
  %187 = icmp eq i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @VERIFY(i32 %188)
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %180
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @dsl_scan_ddt_entry(i32 %196, i32 %199, %struct.TYPE_25__* %200, i32* %201)
  br label %203

203:                                              ; preds = %193, %180
  br label %204

204:                                              ; preds = %203, %156
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ddt_phys_free(%struct.TYPE_23__*, i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @ddt_object_remove(%struct.TYPE_23__*, i32, i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i64 @ddt_object_lookup(%struct.TYPE_23__*, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @ddt_stat_update(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ddt_object_exists(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ddt_object_create(%struct.TYPE_23__*, i32, i32, i32*) #1

declare dso_local i64 @ddt_object_update(%struct.TYPE_23__*, i32, i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @dsl_scan_ddt_entry(i32, i32, %struct.TYPE_25__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
