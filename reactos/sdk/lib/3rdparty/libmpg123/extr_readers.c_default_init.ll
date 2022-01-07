; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_default_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_default_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@plain_read = common dso_local global i32 0, align 4
@posix_read = common dso_local global i32* null, align 8
@posix_lseek = common dso_local global i32* null, align 8
@nix_lseek = common dso_local global i32* null, align 8
@MPG123_NO_PEEK_END = common dso_local global i32 0, align 4
@MPG123_FORCE_SEEKABLE = common dso_local global i32 0, align 4
@READER_SEEKABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@READER_ID3TAG = common dso_local global i32 0, align 4
@MPG123_NEW_ID3 = common dso_local global i32 0, align 4
@MPG123_SEEKBUFFER = common dso_local global i32 0, align 4
@readers = common dso_local global i32* null, align 8
@READER_STREAM = common dso_local global i64 0, align 8
@READER_BUF_STREAM = common dso_local global i64 0, align 8
@plain_fullread = common dso_local global i32 0, align 4
@READER_ICY_STREAM = common dso_local global i64 0, align 8
@READER_BUF_ICY_STREAM = common dso_local global i64 0, align 8
@icy_fullread = common dso_local global i32 0, align 4
@NOQUIET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"mpg123 Programmer's fault: invalid reader\00", align 1
@READER_BUFFERED = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@MPG123_MISSING_FEATURE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@READER_NONBLOCK = common dso_local global i32 0, align 4
@timeout_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @default_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load i32, i32* @plain_read, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 10
  store i32 %4, i32* %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 8
  %17 = load i32*, i32** %16, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i32*, i32** @posix_read, align 8
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32* [ %17, %13 ], [ %19, %18 ]
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 9
  store i32* %21, i32** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  br label %37

35:                                               ; preds = %20
  %36 = load i32*, i32** @posix_lseek, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32* [ %34, %30 ], [ %36, %35 ]
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  store i32* %38, i32** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32*, i32** @nix_lseek, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 6
  store i32* %48, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MPG123_NO_PEEK_END, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %64

61:                                               ; preds = %52
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = call i32 @get_fileinfo(%struct.TYPE_8__* %62)
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32 [ -1, %60 ], [ %63, %61 ]
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MPG123_FORCE_SEEKABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %64
  %80 = load i32, i32* @READER_SEEKABLE, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %64
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %86
  %93 = load i32, i32* @READER_SEEKABLE, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @strncmp(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %92
  %106 = load i32, i32* @READER_ID3TAG, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %106
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @MPG123_NEW_ID3, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %105, %92
  br label %184

118:                                              ; preds = %86
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MPG123_SEEKBUFFER, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %183

126:                                              ; preds = %118
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** @readers, align 8
  %131 = load i64, i64* @READER_STREAM, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = icmp eq i32* %129, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %126
  %135 = load i32*, i32** @readers, align 8
  %136 = load i64, i64* @READER_BUF_STREAM, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load i32, i32* @plain_fullread, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 4
  br label %169

144:                                              ; preds = %126
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** @readers, align 8
  %149 = load i64, i64* @READER_ICY_STREAM, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = icmp eq i32* %147, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %144
  %153 = load i32*, i32** @readers, align 8
  %154 = load i64, i64* @READER_BUF_ICY_STREAM, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  %158 = load i32, i32* @icy_fullread, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 4
  br label %168

162:                                              ; preds = %144
  %163 = load i64, i64* @NOQUIET, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %162
  store i32 -1, i32* %2, align 4
  br label %185

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %168, %134
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = call i32 @bc_init(i32* %172)
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store i32 0, i32* %176, align 8
  %177 = load i32, i32* @READER_BUFFERED, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %177
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %169, %118
  br label %184

184:                                              ; preds = %183, %117
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %167
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @get_fileinfo(%struct.TYPE_8__*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @bc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
