; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dnstls-openssl.c_dnstls_stream_shutdown.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dnstls-openssl.c_dnstls_stream_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i64 0, align 8
@SSL_ERROR_SYSCALL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to invoke SSL_shutdown, ignoring: %m\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to invoke SSL_shutdown, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnstls_stream_shutdown(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = call i32 @assert(%struct.TYPE_15__* %10)
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = call i32 @assert(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = call i32 @assert(%struct.TYPE_15__* %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = call i32* @SSL_get1_session(%struct.TYPE_15__* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %25
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @SSL_SESSION_free(i32* %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32* %50, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %25
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %177

61:                                               ; preds = %57
  %62 = call i32 (...) @ERR_clear_error()
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 @SSL_shutdown(%struct.TYPE_15__* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %61
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = call i32 @dns_stream_ref(%struct.TYPE_15__* %80)
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = call i32 @dnstls_flush_write_buffer(%struct.TYPE_15__* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %178

91:                                               ; preds = %82
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %178

94:                                               ; preds = %61
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %166

97:                                               ; preds = %94
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @SSL_get_error(%struct.TYPE_15__* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %106 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %107 = call i64 @IN_SET(i32 %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %147

109:                                              ; preds = %97
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* @EPOLLIN, align 8
  br label %117

115:                                              ; preds = %109
  %116 = load i64, i64* @EPOLLOUT, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = call i32 @dnstls_flush_write_buffer(%struct.TYPE_15__* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @EAGAIN, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  br label %178

132:                                              ; preds = %125, %117
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = call i32 @dns_stream_ref(%struct.TYPE_15__* %142)
  br label %144

144:                                              ; preds = %138, %132
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %178

147:                                              ; preds = %97
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @SSL_ERROR_SYSCALL, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load i64, i64* @errno, align 8
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64, i64* @errno, align 8
  %156 = call i32 @log_debug_errno(i64 %155, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %151
  br label %164

158:                                              ; preds = %147
  %159 = load i32, i32* %6, align 4
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %161 = call i32 @ERR_error_string_n(i32 %159, i8* %160, i32 256)
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %163 = call i32 @log_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %158, %157
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165, %94
  br label %167

167:                                              ; preds = %166
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = call i32 @dnstls_flush_write_buffer(%struct.TYPE_15__* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %3, align 4
  br label %178

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %57
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %174, %144, %130, %91, %89
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local i32* @SSL_get1_session(%struct.TYPE_15__*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_shutdown(%struct.TYPE_15__*) #1

declare dso_local i32 @dns_stream_ref(%struct.TYPE_15__*) #1

declare dso_local i32 @dnstls_flush_write_buffer(%struct.TYPE_15__*) #1

declare dso_local i32 @SSL_get_error(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_debug_errno(i64, i8*) #1

declare dso_local i32 @ERR_error_string_n(i32, i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
