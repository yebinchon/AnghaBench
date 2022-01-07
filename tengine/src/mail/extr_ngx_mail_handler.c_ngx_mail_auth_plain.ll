; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_handler.c_ngx_mail_auth_plain.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_handler.c_ngx_mail_auth_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i64* }
%struct.TYPE_16__ = type { i32, i64* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64* }
%struct.TYPE_15__ = type { i32, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"client sent invalid base64 encoding in AUTH PLAIN command\00", align 1
@NGX_MAIL_PARSE_INVALID_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"client sent invalid login in AUTH PLAIN command\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"client sent invalid password in AUTH PLAIN command\00", align 1
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_mail_auth_plain(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ngx_base64_decoded_length(i32 %23)
  %25 = call i64* @ngx_pnalloc(i32 %18, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i64* %25, i64** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @NGX_ERROR, align 4
  store i32 %31, i32* %4, align 4
  br label %136

32:                                               ; preds = %3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %34
  %36 = call i64 @ngx_decode_base64(%struct.TYPE_13__* %11, %struct.TYPE_13__* %35)
  %37 = load i64, i64* @NGX_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32, i32* @NGX_LOG_INFO, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ngx_log_error(i32 %40, i32 %43, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %45, i32* %4, align 4
  br label %136

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %8, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64* %53, i64** %9, align 8
  br label %54

54:                                               ; preds = %65, %46
  %55 = load i64*, i64** %8, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = icmp ult i64* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64*, i64** %8, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %8, align 8
  %61 = load i64, i64* %59, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i1 [ false, %54 ], [ %62, %58 ]
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  br label %54

66:                                               ; preds = %63
  %67 = load i64*, i64** %8, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = icmp eq i64* %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* @NGX_LOG_INFO, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ngx_log_error(i32 %71, i32 %74, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %76, i32* %4, align 4
  br label %136

77:                                               ; preds = %66
  %78 = load i64*, i64** %8, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  store i64* %78, i64** %81, align 8
  br label %82

82:                                               ; preds = %92, %77
  %83 = load i64*, i64** %8, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = icmp ult i64* %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i1 [ false, %82 ], [ %89, %86 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i64*, i64** %8, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %8, align 8
  br label %82

95:                                               ; preds = %90
  %96 = load i64*, i64** %8, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = icmp eq i64* %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32, i32* @NGX_LOG_INFO, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ngx_log_error(i32 %100, i32 %103, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %105, i32* %4, align 4
  br label %136

106:                                              ; preds = %95
  %107 = load i64*, i64** %8, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %8, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = ptrtoint i64* %107 to i64
  %114 = ptrtoint i64* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i64*, i64** %9, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = ptrtoint i64* %121 to i64
  %124 = ptrtoint i64* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load i64*, i64** %8, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  store i64* %131, i64** %134, align 8
  %135 = load i32, i32* @NGX_DONE, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %106, %99, %70, %39, %30
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_base64_decoded_length(i32) #1

declare dso_local i64 @ngx_decode_base64(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
