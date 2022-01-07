; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_invalid_stdin_child.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_invalid_stdin_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"handle = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@__pioinfo = common dso_local global %struct.TYPE_8__** null, align 8
@MSVCRT_FD_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"info->handle = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"info->wxflag = %x\0A\00", align 1
@stdin = common dso_local global %struct.TYPE_9__* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"stdin->_file = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fread(stdin) returned %d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"read(-2) returned %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"read(STDIN_FILENO) returned %d\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"_flsbuf(stdin) returned %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"fwrite(stdin) returned %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"write(-2) returned %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"write(STDIN_FILENO) returned %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"fclose(stdin) returned %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"close(-2) returned %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"close(STDIN_FILENO) returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invalid_stdin_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_stdin_child() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 -559038737, i32* @errno, align 4
  %5 = load i64, i64* @STDIN_FILENO, align 8
  %6 = call i64 @_get_osfhandle(i64 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp eq i64 %7, -2
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @errno, align 4
  %14 = icmp eq i32 %13, -559038737
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @__pioinfo, align 8
  %19 = load i64, i64* @STDIN_FILENO, align 8
  %20 = load i64, i64* @MSVCRT_FD_BLOCK_SIZE, align 8
  %21 = udiv i64 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i64, i64* @STDIN_FILENO, align 8
  %25 = load i64, i64* @MSVCRT_FD_BLOCK_SIZE, align 8
  %26 = urem i64 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %26
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %2, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, -2
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 193
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stdin, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -2
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stdin, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  store i32 -559038737, i32* @errno, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stdin, align 8
  %57 = call i32 @fread(i8* %4, i32 1, i32 1, %struct.TYPE_9__* %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @EBADF, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 -559038737, i32* @errno, align 4
  %70 = call i32 @read(i64 -2, i8* %4, i32 1)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, -1
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @errno, align 4
  %77 = load i32, i32* @EBADF, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 -559038737, i32* @errno, align 4
  %82 = load i64, i64* @STDIN_FILENO, align 8
  %83 = call i32 @read(i64 %82, i8* %4, i32 1)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp eq i32 %84, -1
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @errno, align 4
  %90 = load i32, i32* @EBADF, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  store i32 -559038737, i32* @errno, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stdin, align 8
  %96 = call i32 @_flsbuf(i8 signext 97, %struct.TYPE_9__* %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @EOF, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @errno, align 4
  %104 = load i32, i32* @EBADF, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @errno, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  store i32 -559038737, i32* @errno, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stdin, align 8
  %110 = call i32 @fwrite(i8* %4, i32 1, i32 1, %struct.TYPE_9__* %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @errno, align 4
  %118 = load i32, i32* @EBADF, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  store i32 -559038737, i32* @errno, align 4
  %123 = call i32 @write(i64 -2, i8* %4, i32 1)
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %3, align 4
  %125 = icmp eq i32 %124, -1
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @errno, align 4
  %130 = load i32, i32* @EBADF, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* @errno, align 4
  %134 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  store i32 -559038737, i32* @errno, align 4
  %135 = load i64, i64* @STDIN_FILENO, align 8
  %136 = call i32 @write(i64 %135, i8* %4, i32 1)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, -1
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @errno, align 4
  %143 = load i32, i32* @EBADF, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* @errno, align 4
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  store i32 -559038737, i32* @errno, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** @stdin, align 8
  %149 = call i32 @fclose(%struct.TYPE_9__* %148)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %3, align 4
  %151 = icmp eq i32 %150, -1
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @errno, align 4
  %156 = load i32, i32* @EBADF, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* @errno, align 4
  %160 = call i32 @ok(i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  store i32 -559038737, i32* @errno, align 4
  %161 = call i32 @close(i64 -2)
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* %3, align 4
  %163 = icmp eq i32 %162, -1
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @ok(i32 %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @errno, align 4
  %168 = load i32, i32* @EBADF, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* @errno, align 4
  %172 = call i32 @ok(i32 %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  store i32 -559038737, i32* @errno, align 4
  %173 = load i64, i64* @STDIN_FILENO, align 8
  %174 = call i32 @close(i64 %173)
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* %3, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %181, label %177

177:                                              ; preds = %0
  %178 = load i32, i32* %3, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  br label %181

181:                                              ; preds = %177, %0
  %182 = phi i1 [ true, %0 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %3, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load i32, i32* @errno, align 4
  %190 = load i32, i32* @EBADF, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %188, %181
  %193 = load i32, i32* %3, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* @errno, align 4
  %197 = icmp eq i32 %196, -559038737
  br label %198

198:                                              ; preds = %195, %192
  %199 = phi i1 [ false, %192 ], [ %197, %195 ]
  br label %200

200:                                              ; preds = %198, %188
  %201 = phi i1 [ true, %188 ], [ %199, %198 ]
  %202 = zext i1 %201 to i32
  %203 = load i32, i32* @errno, align 4
  %204 = call i32 @ok(i32 %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  ret void
}

declare dso_local i64 @_get_osfhandle(i64) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i32 @_flsbuf(i8 signext, %struct.TYPE_9__*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @write(i64, i8*, i32) #1

declare dso_local i32 @fclose(%struct.TYPE_9__*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
