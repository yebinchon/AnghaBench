; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_netconn_recv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_net.c_netconn_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32*, i32*, i64 }

@TRUE = common dso_local global i64 0, align 8
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"read_ssl_chunk failed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"received %ld bytes\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @netconn_recv(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* @TRUE, align 8
  store i64 %20, i64* %6, align 8
  br label %158

21:                                               ; preds = %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %141

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %86

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @min(i64 %32, i64 %35)
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i8* %38, i32* %41, i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = sext i32 %53 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %55, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %31
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @heap_free(i32* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %63, %31
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @MSG_WAITALL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %9, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77, %72
  %84 = load i64, i64* @TRUE, align 8
  store i64 %84, i64* %6, align 8
  br label %158

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %26
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %132, %86
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %12, align 8
  %98 = sub i64 %96, %97
  %99 = call i64 @read_ssl_chunk(%struct.TYPE_4__* %91, i32* %95, i64 %98, i64* %13, i64* %15)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %90
  %103 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* @FALSE, align 8
  store i64 %107, i64* %6, align 8
  br label %158

108:                                              ; preds = %102
  br label %134

109:                                              ; preds = %90
  %110 = load i64, i64* %15, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %134

114:                                              ; preds = %109
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %12, align 8
  br label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @MSG_WAITALL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %9, align 8
  %129 = icmp ult i64 %127, %128
  br label %130

130:                                              ; preds = %126, %121
  %131 = phi i1 [ false, %121 ], [ %129, %126 ]
  br label %132

132:                                              ; preds = %130, %118
  %133 = phi i1 [ true, %118 ], [ %131, %130 ]
  br i1 %133, label %90, label %134

134:                                              ; preds = %132, %112, %108
  %135 = load i64, i64* %12, align 8
  %136 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %135)
  %137 = load i64, i64* %12, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32*, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i64, i64* @TRUE, align 8
  store i64 %140, i64* %6, align 8
  br label %158

141:                                              ; preds = %21
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @sock_recv(i32 %144, i8* %145, i64 %146, i32 %147)
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  %150 = icmp eq i32 %148, -1
  br i1 %150, label %151, label %156

151:                                              ; preds = %141
  %152 = load i32, i32* @errno, align 4
  %153 = call i32 @sock_get_error(i32 %152)
  %154 = call i32 @set_last_error(i32 %153)
  %155 = load i64, i64* @FALSE, align 8
  store i64 %155, i64* %6, align 8
  br label %158

156:                                              ; preds = %141
  %157 = load i64, i64* @TRUE, align 8
  store i64 %157, i64* %6, align 8
  br label %158

158:                                              ; preds = %156, %151, %134, %106, %83, %19
  %159 = load i64, i64* %6, align 8
  ret i64 %159
}

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @read_ssl_chunk(%struct.TYPE_4__*, i32*, i64, i64*, i64*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @sock_recv(i32, i8*, i64, i32) #1

declare dso_local i32 @set_last_error(i32) #1

declare dso_local i32 @sock_get_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
