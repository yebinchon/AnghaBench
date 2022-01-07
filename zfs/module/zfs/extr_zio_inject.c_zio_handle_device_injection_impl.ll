; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_device_injection_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_device_injection_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i32 }

@VDEV_LABEL_START_SIZE = common dso_local global i64 0, align 8
@VDEV_LABEL_END_SIZE = common dso_local global i64 0, align 8
@inject_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@inject_handlers = common dso_local global i32 0, align 4
@ZINJECT_DEVICE_FAULT = common dso_local global i64 0, align 8
@ZIO_FLAG_IO_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4
@ZIO_TYPES = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@VDEV_AUX_OPEN_FAILED = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@zio_inject_bitflip_cb = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32)* @zio_handle_device_injection_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zio_handle_device_injection_impl(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp sge i64 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %15
  store i32 0, i32* %5, align 4
  br label %185

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i32, i32* @RW_READER, align 4
  %34 = call i32 @rw_enter(i32* @inject_lock, i32 %33)
  %35 = call %struct.TYPE_16__* @list_head(i32* @inject_handlers)
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %10, align 8
  br label %36

36:                                               ; preds = %179, %32
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %182

39:                                               ; preds = %36
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ZINJECT_DEVICE_FAULT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %179

47:                                               ; preds = %39
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %178

56:                                               ; preds = %47
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = icmp eq %struct.TYPE_14__* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %70 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %62
  br label %179

75:                                               ; preds = %65, %56
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = icmp ne %struct.TYPE_14__* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZIO_TYPES, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %179

95:                                               ; preds = %85, %78, %75
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %167

109:                                              ; preds = %102, %95
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @freq_triggered(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  br label %179

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @ENXIO, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @VDEV_AUX_OPEN_FAILED, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  br label %126

126:                                              ; preds = %121, %117
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = icmp ne %struct.TYPE_14__* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %132, %126
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @EILSEQ, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %141
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %150 = icmp eq %struct.TYPE_14__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %182

152:                                              ; preds = %148
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @zio_inject_bitflip_cb, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %161 = call i32 @abd_iterate_func(i32 %155, i32 0, i32 %158, i32 %159, %struct.TYPE_14__* %160)
  br label %182

162:                                              ; preds = %141
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %11, align 4
  br label %182

167:                                              ; preds = %102
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @ENXIO, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i32, i32* @EIO, align 4
  %176 = call i32 @SET_ERROR(i32 %175)
  store i32 %176, i32* %11, align 4
  br label %182

177:                                              ; preds = %167
  br label %178

178:                                              ; preds = %177, %47
  br label %179

179:                                              ; preds = %178, %116, %94, %74, %46
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = call %struct.TYPE_16__* @list_next(i32* @inject_handlers, %struct.TYPE_16__* %180)
  store %struct.TYPE_16__* %181, %struct.TYPE_16__** %10, align 8
  br label %36

182:                                              ; preds = %174, %162, %152, %151, %36
  %183 = call i32 @rw_exit(i32* @inject_lock)
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %182, %30
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_16__* @list_head(i32*) #1

declare dso_local i32 @freq_triggered(i32) #1

declare dso_local i32 @abd_iterate_func(i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_16__* @list_next(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
