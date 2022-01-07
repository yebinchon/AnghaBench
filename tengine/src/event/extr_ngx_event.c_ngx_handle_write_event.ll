; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event.c_ngx_handle_write_event.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event.c_ngx_handle_write_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32* }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_CLEAR_EVENT = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@NGX_CLEAR_EVENT = common dso_local global i32 0, align 4
@NGX_LOWAT_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_EVENTPORT_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_handle_write_event(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @ngx_send_lowat(i32* %13, i64 %14)
  %16 = load i64, i64* @NGX_ERROR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i64, i64* @NGX_ERROR, align 8
  store i64 %19, i64* %3, align 8
  br label %154

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* @ngx_event_flags, align 4
  %23 = load i32, i32* @NGX_USE_CLEAR_EVENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %39 = load i32, i32* @NGX_CLEAR_EVENT, align 4
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @NGX_LOWAT_EVENT, align 4
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %39, %46
  %48 = call i64 @ngx_add_event(%struct.TYPE_5__* %37, i32 %38, i32 %47)
  %49 = load i64, i64* @NGX_ERROR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @NGX_ERROR, align 8
  store i64 %52, i64* %3, align 8
  br label %154

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %31, %26
  %55 = load i64, i64* @NGX_OK, align 8
  store i64 %55, i64* %3, align 8
  br label %154

56:                                               ; preds = %21
  %57 = load i32, i32* @ngx_event_flags, align 4
  %58 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %74 = load i32, i32* @NGX_LEVEL_EVENT, align 4
  %75 = call i64 @ngx_add_event(%struct.TYPE_5__* %72, i32 %73, i32 %74)
  %76 = load i64, i64* @NGX_ERROR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i64, i64* @NGX_ERROR, align 8
  store i64 %79, i64* %3, align 8
  br label %154

80:                                               ; preds = %71
  %81 = load i64, i64* @NGX_OK, align 8
  store i64 %81, i64* %3, align 8
  br label %154

82:                                               ; preds = %66, %61
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %95 = load i32, i32* @NGX_LEVEL_EVENT, align 4
  %96 = call i64 @ngx_del_event(%struct.TYPE_5__* %93, i32 %94, i32 %95)
  %97 = load i64, i64* @NGX_ERROR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @NGX_ERROR, align 8
  store i64 %100, i64* %3, align 8
  br label %154

101:                                              ; preds = %92
  %102 = load i64, i64* @NGX_OK, align 8
  store i64 %102, i64* %3, align 8
  br label %154

103:                                              ; preds = %87, %82
  br label %151

104:                                              ; preds = %56
  %105 = load i32, i32* @ngx_event_flags, align 4
  %106 = load i32, i32* @NGX_USE_EVENTPORT_EVENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %122 = call i64 @ngx_add_event(%struct.TYPE_5__* %120, i32 %121, i32 0)
  %123 = load i64, i64* @NGX_ERROR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i64, i64* @NGX_ERROR, align 8
  store i64 %126, i64* %3, align 8
  br label %154

127:                                              ; preds = %119
  %128 = load i64, i64* @NGX_OK, align 8
  store i64 %128, i64* %3, align 8
  br label %154

129:                                              ; preds = %114, %109
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = load i32, i32* @NGX_WRITE_EVENT, align 4
  %142 = call i64 @ngx_del_event(%struct.TYPE_5__* %140, i32 %141, i32 0)
  %143 = load i64, i64* @NGX_ERROR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i64, i64* @NGX_ERROR, align 8
  store i64 %146, i64* %3, align 8
  br label %154

147:                                              ; preds = %139
  %148 = load i64, i64* @NGX_OK, align 8
  store i64 %148, i64* %3, align 8
  br label %154

149:                                              ; preds = %134, %129
  br label %150

150:                                              ; preds = %149, %104
  br label %151

151:                                              ; preds = %150, %103
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* @NGX_OK, align 8
  store i64 %153, i64* %3, align 8
  br label %154

154:                                              ; preds = %152, %147, %145, %127, %125, %101, %99, %80, %78, %54, %51, %18
  %155 = load i64, i64* %3, align 8
  ret i64 %155
}

declare dso_local i64 @ngx_send_lowat(i32*, i64) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
