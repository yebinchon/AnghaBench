; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_trim_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_trim_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__*, i32*, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VDEV_TRIM_ACTIVE = common dso_local global i64 0, align 8
@VDEV_TRIM_SUSPENDED = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@VDEV_TRIM_CANCELED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid cmd_type %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i64, i64, i32*)* @spa_vdev_trim_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_trim_impl(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @SCL_CONFIG, align 4
  %21 = load i32, i32* @SCL_STATE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FTAG, align 4
  %24 = load i32, i32* @RW_READER, align 4
  %25 = call i32 @spa_config_enter(i32* %19, i32 %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = call %struct.TYPE_11__* @spa_lookup_by_guid(i32* %26, i32 %27, i32 %28)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %16, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %31 = icmp eq %struct.TYPE_11__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %7
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32, %7
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @SCL_CONFIG, align 4
  %40 = load i32, i32* @SCL_STATE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @spa_config_exit(i32* %38, i32 %41, i32 %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %8, align 4
  br label %208

46:                                               ; preds = %32
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %55 = call i32 @vdev_is_concrete(%struct.TYPE_11__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53, %46
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @SCL_CONFIG, align 4
  %60 = load i32, i32* @SCL_STATE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FTAG, align 4
  %63 = call i32 @spa_config_exit(i32* %58, i32 %61, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @SET_ERROR(i32 %64)
  store i32 %65, i32* %8, align 4
  br label %208

66:                                               ; preds = %53
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %68 = call i32 @vdev_writeable(%struct.TYPE_11__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @SCL_CONFIG, align 4
  %73 = load i32, i32* @SCL_STATE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @FTAG, align 4
  %76 = call i32 @spa_config_exit(i32* %71, i32 %74, i32 %75)
  %77 = load i32, i32* @EROFS, align 4
  %78 = call i32 @SET_ERROR(i32 %77)
  store i32 %78, i32* %8, align 4
  br label %208

79:                                               ; preds = %66
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @SCL_CONFIG, align 4
  %87 = load i32, i32* @SCL_STATE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @FTAG, align 4
  %90 = call i32 @spa_config_exit(i32* %85, i32 %88, i32 %89)
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = call i32 @SET_ERROR(i32 %91)
  store i32 %92, i32* %8, align 4
  br label %208

93:                                               ; preds = %79
  %94 = load i64, i64* %14, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* @SCL_CONFIG, align 4
  %104 = load i32, i32* @SCL_STATE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @FTAG, align 4
  %107 = call i32 @spa_config_exit(i32* %102, i32 %105, i32 %106)
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = call i32 @SET_ERROR(i32 %108)
  store i32 %109, i32* %8, align 4
  br label %208

110:                                              ; preds = %96, %93
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = call i32 @mutex_enter(i32* %116)
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* @SCL_CONFIG, align 4
  %120 = load i32, i32* @SCL_STATE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @FTAG, align 4
  %123 = call i32 @spa_config_exit(i32* %118, i32 %121, i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 129
  br i1 %125, label %126, label %144

126:                                              ; preds = %114
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131, %126
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = call i32 @mutex_exit(i32* %140)
  %142 = load i32, i32* @EBUSY, align 4
  %143 = call i32 @SET_ERROR(i32 %142)
  store i32 %143, i32* %8, align 4
  br label %208

144:                                              ; preds = %131, %114
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %145, 130
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @VDEV_TRIM_ACTIVE, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @VDEV_TRIM_SUSPENDED, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = call i32 @mutex_exit(i32* %161)
  %163 = load i32, i32* @ESRCH, align 4
  %164 = call i32 @SET_ERROR(i32 %163)
  store i32 %164, i32* %8, align 4
  br label %208

165:                                              ; preds = %153, %147, %144
  %166 = load i32, i32* %11, align 4
  %167 = icmp eq i32 %166, 128
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @VDEV_TRIM_ACTIVE, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = call i32 @mutex_exit(i32* %176)
  %178 = load i32, i32* @ESRCH, align 4
  %179 = call i32 @SET_ERROR(i32 %178)
  store i32 %179, i32* %8, align 4
  br label %208

180:                                              ; preds = %168, %165
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %11, align 4
  switch i32 %183, label %200 [
    i32 129, label %184
    i32 130, label %190
    i32 128, label %195
  ]

184:                                              ; preds = %182
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %14, align 8
  %189 = call i32 @vdev_trim(%struct.TYPE_11__* %185, i32 %186, i64 %187, i64 %188)
  br label %204

190:                                              ; preds = %182
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %192 = load i64, i64* @VDEV_TRIM_CANCELED, align 8
  %193 = load i32*, i32** %15, align 8
  %194 = call i32 @vdev_trim_stop(%struct.TYPE_11__* %191, i64 %192, i32* %193)
  br label %204

195:                                              ; preds = %182
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %197 = load i64, i64* @VDEV_TRIM_SUSPENDED, align 8
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @vdev_trim_stop(%struct.TYPE_11__* %196, i64 %197, i32* %198)
  br label %204

200:                                              ; preds = %182
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %202)
  br label %204

204:                                              ; preds = %200, %195, %190, %184
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = call i32 @mutex_exit(i32* %206)
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %204, %174, %159, %138, %101, %84, %70, %57, %37
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @spa_lookup_by_guid(i32*, i32, i32) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_11__*) #1

declare dso_local i32 @vdev_writeable(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_trim(%struct.TYPE_11__*, i32, i64, i64) #1

declare dso_local i32 @vdev_trim_stop(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
