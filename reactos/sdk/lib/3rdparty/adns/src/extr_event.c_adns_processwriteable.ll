; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_processwriteable.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns_processwriteable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.timeval = type { i32 }

@cc_entex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADNS_CLEAR_ERRNO = common dso_local global i32 0, align 4
@ADNS_CAPTURE_ERRNO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"connect/adns_socket_read\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sent data before first request\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"adns_socket_write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adns_processwriteable(%struct.TYPE_11__* %0, i32 %1, %struct.timeval* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.timeval* %2, %struct.timeval** %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = load i32, i32* @cc_entex, align 4
  %10 = call i32 @adns__consistency(%struct.TYPE_11__* %8, i32 0, i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %183 [
    i32 129, label %14
    i32 131, label %14
    i32 130, label %15
    i32 128, label %94
  ]

14:                                               ; preds = %3, %3
  br label %185

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %185

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %36

36:                                               ; preds = %82, %22
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = call i32 @adns__vbuf_ensure(%struct.TYPE_12__* %38, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %7, align 4
  br label %186

43:                                               ; preds = %36
  %44 = load i32, i32* @ADNS_CLEAR_ERRNO, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = call i32 @adns_socket_read(i32 %47, i32* %50, i32 1)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @ADNS_CAPTURE_ERRNO, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32, i32* @errno, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @errno, align 4
  %64 = load i32, i32* @EWOULDBLOCK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %58, %43
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load %struct.timeval*, %struct.timeval** %6, align 8
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tcp_connected(%struct.TYPE_11__* %67, i32 %70)
  store i32 0, i32* %7, align 4
  br label %186

72:                                               ; preds = %62, %55
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = call i32 @adns__tcp_broken(%struct.TYPE_11__* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %186

78:                                               ; preds = %72
  %79 = load i32, i32* @errno, align 4
  %80 = load i32, i32* @EINTR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %36

83:                                               ; preds = %78
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @errno_resources(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @errno, align 4
  store i32 %88, i32* %7, align 4
  br label %186

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = load i32, i32* @errno, align 4
  %92 = call i8* @strerror(i32 %91)
  %93 = call i32 @adns__tcp_broken(%struct.TYPE_11__* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %92)
  store i32 0, i32* %7, align 4
  br label %186

94:                                               ; preds = %3
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %185

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %181, %133, %101
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %182

108:                                              ; preds = %102
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = call i32 @adns__sigpipe_protect(%struct.TYPE_11__* %109)
  %111 = load i32, i32* @ADNS_CLEAR_ERRNO, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @adns_socket_write(i32 %114, i32 %118, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @ADNS_CAPTURE_ERRNO, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = call i32 @adns__sigpipe_unprotect(%struct.TYPE_11__* %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %108
  %130 = load i32, i32* @errno, align 4
  %131 = load i32, i32* @EINTR, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %102

134:                                              ; preds = %129
  %135 = load i32, i32* @errno, align 4
  %136 = load i32, i32* @EAGAIN, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @errno, align 4
  %140 = load i32, i32* @EWOULDBLOCK, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %134
  store i32 0, i32* %7, align 4
  br label %186

143:                                              ; preds = %138
  %144 = load i32, i32* @errno, align 4
  %145 = call i32 @errno_resources(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @errno, align 4
  store i32 %148, i32* %7, align 4
  br label %186

149:                                              ; preds = %143
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = load i32, i32* @errno, align 4
  %152 = call i8* @strerror(i32 %151)
  %153 = call i32 @adns__tcp_broken(%struct.TYPE_11__* %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %152)
  store i32 0, i32* %7, align 4
  br label %186

154:                                              ; preds = %108
  %155 = load i32, i32* %7, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %154
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, %158
  store i32 %163, i32* %161, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %171, %172
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = call i32 @memmove(i32 %167, i32 %173, i64 %178)
  br label %180

180:                                              ; preds = %157, %154
  br label %181

181:                                              ; preds = %180
  br label %102

182:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %186

183:                                              ; preds = %3
  %184 = call i32 (...) @abort() #3
  unreachable

185:                                              ; preds = %100, %21, %14
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %185, %182, %149, %147, %142, %89, %87, %75, %66, %41
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %188 = load i32, i32* @cc_entex, align 4
  %189 = call i32 @adns__consistency(%struct.TYPE_11__* %187, i32 0, i32 %188)
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i32 @adns__consistency(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @adns__vbuf_ensure(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @adns_socket_read(i32, i32*, i32) #1

declare dso_local i32 @tcp_connected(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @adns__tcp_broken(%struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @errno_resources(i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @adns__sigpipe_protect(%struct.TYPE_11__*) #1

declare dso_local i32 @adns_socket_write(i32, i32, i32) #1

declare dso_local i32 @adns__sigpipe_unprotect(%struct.TYPE_11__*) #1

declare dso_local i32 @memmove(i32, i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
