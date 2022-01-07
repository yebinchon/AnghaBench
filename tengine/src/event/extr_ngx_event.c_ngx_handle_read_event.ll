; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event.c_ngx_handle_read_event.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event.c_ngx_handle_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_CLEAR_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_CLEAR_EVENT = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@NGX_USE_EVENTPORT_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_handle_read_event(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @ngx_event_flags, align 4
  %7 = load i32, i32* @NGX_USE_CLEAR_EVENT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = load i32, i32* @NGX_READ_EVENT, align 4
  %23 = load i32, i32* @NGX_CLEAR_EVENT, align 4
  %24 = call i64 @ngx_add_event(%struct.TYPE_5__* %21, i32 %22, i32 %23)
  %25 = load i64, i64* @NGX_ERROR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @NGX_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %137

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %15, %10
  %31 = load i64, i64* @NGX_OK, align 8
  store i64 %31, i64* %3, align 8
  br label %137

32:                                               ; preds = %2
  %33 = load i32, i32* @ngx_event_flags, align 4
  %34 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load i32, i32* @NGX_READ_EVENT, align 4
  %50 = load i32, i32* @NGX_LEVEL_EVENT, align 4
  %51 = call i64 @ngx_add_event(%struct.TYPE_5__* %48, i32 %49, i32 %50)
  %52 = load i64, i64* @NGX_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @NGX_ERROR, align 8
  store i64 %55, i64* %3, align 8
  br label %137

56:                                               ; preds = %47
  %57 = load i64, i64* @NGX_OK, align 8
  store i64 %57, i64* %3, align 8
  br label %137

58:                                               ; preds = %42, %37
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68, %63
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = load i32, i32* @NGX_READ_EVENT, align 4
  %76 = load i32, i32* @NGX_LEVEL_EVENT, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %76, %77
  %79 = call i64 @ngx_del_event(%struct.TYPE_5__* %74, i32 %75, i32 %78)
  %80 = load i64, i64* @NGX_ERROR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i64, i64* @NGX_ERROR, align 8
  store i64 %83, i64* %3, align 8
  br label %137

84:                                               ; preds = %73
  %85 = load i64, i64* @NGX_OK, align 8
  store i64 %85, i64* %3, align 8
  br label %137

86:                                               ; preds = %68, %58
  br label %134

87:                                               ; preds = %32
  %88 = load i32, i32* @ngx_event_flags, align 4
  %89 = load i32, i32* @NGX_USE_EVENTPORT_EVENT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %133

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = load i32, i32* @NGX_READ_EVENT, align 4
  %105 = call i64 @ngx_add_event(%struct.TYPE_5__* %103, i32 %104, i32 0)
  %106 = load i64, i64* @NGX_ERROR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i64, i64* @NGX_ERROR, align 8
  store i64 %109, i64* %3, align 8
  br label %137

110:                                              ; preds = %102
  %111 = load i64, i64* @NGX_OK, align 8
  store i64 %111, i64* %3, align 8
  br label %137

112:                                              ; preds = %97, %92
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = load i32, i32* @NGX_READ_EVENT, align 4
  %125 = call i64 @ngx_del_event(%struct.TYPE_5__* %123, i32 %124, i32 0)
  %126 = load i64, i64* @NGX_ERROR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i64, i64* @NGX_ERROR, align 8
  store i64 %129, i64* %3, align 8
  br label %137

130:                                              ; preds = %122
  %131 = load i64, i64* @NGX_OK, align 8
  store i64 %131, i64* %3, align 8
  br label %137

132:                                              ; preds = %117, %112
  br label %133

133:                                              ; preds = %132, %87
  br label %134

134:                                              ; preds = %133, %86
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* @NGX_OK, align 8
  store i64 %136, i64* %3, align 8
  br label %137

137:                                              ; preds = %135, %130, %128, %110, %108, %84, %82, %56, %54, %30, %27
  %138 = load i64, i64* %3, align 8
  ret i64 %138
}

declare dso_local i64 @ngx_add_event(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
