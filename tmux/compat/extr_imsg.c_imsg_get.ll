; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_get.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_imsg.c_imsg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsgbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.imsg = type { i32, %struct.TYPE_5__, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@IMSG_HEADER_SIZE = common dso_local global i64 0, align 8
@MAX_IMSGSIZE = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IMSGF_HASFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imsg_get(%struct.imsgbuf* %0, %struct.imsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imsgbuf*, align 8
  %5 = alloca %struct.imsg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.imsgbuf* %0, %struct.imsgbuf** %4, align 8
  store %struct.imsg* %1, %struct.imsg** %5, align 8
  %9 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %10 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

17:                                               ; preds = %2
  %18 = load %struct.imsg*, %struct.imsg** %5, align 8
  %19 = getelementptr inbounds %struct.imsg, %struct.imsg* %18, i32 0, i32 1
  %20 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %21 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @memcpy(%struct.TYPE_5__* %19, i64 %23, i64 16)
  %25 = load %struct.imsg*, %struct.imsg** %5, align 8
  %26 = getelementptr inbounds %struct.imsg, %struct.imsg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %17
  %32 = load %struct.imsg*, %struct.imsg** %5, align 8
  %33 = getelementptr inbounds %struct.imsg, %struct.imsg* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAX_IMSGSIZE, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %17
  %39 = load i32, i32* @ERANGE, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %143

40:                                               ; preds = %31
  %41 = load %struct.imsg*, %struct.imsg** %5, align 8
  %42 = getelementptr inbounds %struct.imsg, %struct.imsg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %143

48:                                               ; preds = %40
  %49 = load %struct.imsg*, %struct.imsg** %5, align 8
  %50 = getelementptr inbounds %struct.imsg, %struct.imsg* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %8, align 8
  %55 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %56 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %60 = add i64 %58, %59
  %61 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %62 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load %struct.imsg*, %struct.imsg** %5, align 8
  %68 = getelementptr inbounds %struct.imsg, %struct.imsg* %67, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %68, align 8
  br label %77

69:                                               ; preds = %48
  %70 = load i64, i64* %8, align 8
  %71 = call %struct.TYPE_5__* @malloc(i64 %70)
  %72 = load %struct.imsg*, %struct.imsg** %5, align 8
  %73 = getelementptr inbounds %struct.imsg, %struct.imsg* %72, i32 0, i32 2
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %73, align 8
  %74 = icmp eq %struct.TYPE_5__* %71, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %143

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.imsg*, %struct.imsg** %5, align 8
  %79 = getelementptr inbounds %struct.imsg, %struct.imsg* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IMSGF_HASFD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %87 = call i32 @imsg_get_fd(%struct.imsgbuf* %86)
  %88 = load %struct.imsg*, %struct.imsg** %5, align 8
  %89 = getelementptr inbounds %struct.imsg, %struct.imsg* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %93

90:                                               ; preds = %77
  %91 = load %struct.imsg*, %struct.imsg** %5, align 8
  %92 = getelementptr inbounds %struct.imsg, %struct.imsg* %91, i32 0, i32 0
  store i32 -1, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.imsg*, %struct.imsg** %5, align 8
  %95 = getelementptr inbounds %struct.imsg, %struct.imsg* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %98 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @memcpy(%struct.TYPE_5__* %96, i64 %100, i64 %101)
  %103 = load %struct.imsg*, %struct.imsg** %5, align 8
  %104 = getelementptr inbounds %struct.imsg, %struct.imsg* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %93
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.imsg*, %struct.imsg** %5, align 8
  %112 = getelementptr inbounds %struct.imsg, %struct.imsg* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %110, %114
  store i64 %115, i64* %7, align 8
  %116 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %117 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %120 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.imsg*, %struct.imsg** %5, align 8
  %124 = getelementptr inbounds %struct.imsg, %struct.imsg* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %122, %126
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @memmove(i64* %118, i64 %127, i64 %128)
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %132 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  br label %138

134:                                              ; preds = %93
  %135 = load %struct.imsgbuf*, %struct.imsgbuf** %4, align 8
  %136 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %134, %109
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %141 = add i64 %139, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %75, %47, %38, %16
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i64, i64) #1

declare dso_local %struct.TYPE_5__* @malloc(i64) #1

declare dso_local i32 @imsg_get_fd(%struct.imsgbuf*) #1

declare dso_local i32 @memmove(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
