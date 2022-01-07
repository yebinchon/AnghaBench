; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_estimate_size.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_estimate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32 }

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i32 0, align 4
@send_progress_thread = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_THREADCREATEFAILED = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i8* null, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"progress thread exited nonzero\00", align 1
@EZFS_BADBACKUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"size\09%llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"total estimated size is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, %struct.TYPE_9__*, i64, i64, i64, i8*, i8*)* @estimate_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_size(%struct.TYPE_8__* %0, i8* %1, i32 %2, %struct.TYPE_9__* %3, i64 %4, i64 %5, i64 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_10__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca [1024 x i8], align 16
  %28 = alloca [16 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %9
  %34 = load i32*, i32** @stdout, align 8
  br label %37

35:                                               ; preds = %9
  %36 = load i32*, i32** @stderr, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32* [ %34, %33 ], [ %36, %35 ]
  store i32* %38, i32** %21, align 8
  %39 = bitcast %struct.TYPE_10__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 32, i1 false)
  store i32 0, i32* %23, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @B_TRUE, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @send_progress_thread, align 4
  %60 = call i32 @pthread_create(i32* %24, i32* null, i32 %59, %struct.TYPE_10__* %22)
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %23, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %44
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 @zfs_error_aux(i32 %66, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EZFS_THREADCREATEFAILED, align 4
  %74 = load i8*, i8** %19, align 8
  %75 = call i32 @zfs_error(i32 %72, i32 %73, i8* %74)
  store i32 %75, i32* %10, align 4
  br label %166

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %83 = call i32 @lzc_flags_from_sendflags(%struct.TYPE_9__* %82)
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @lzc_send_space_resume_redacted(i32 %80, i8* %81, i32 %83, i64 %84, i64 %85, i64 %86, i8* %87, i32 %88, i64* %20)
  store i32 %89, i32* %23, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %77
  store i8* null, i8** %25, align 8
  %95 = load i32, i32* %24, align 4
  %96 = call i32 @pthread_cancel(i32 %95)
  %97 = load i32, i32* %24, align 4
  %98 = call i32 @pthread_join(i32 %97, i8** %25)
  %99 = load i8*, i8** %25, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %26, align 4
  %102 = load i32, i32* %26, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %94
  %105 = load i8*, i8** %25, align 8
  %106 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %107 = icmp ne i8* %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %110 = load i32, i32* @TEXT_DOMAIN, align 4
  %111 = call i8* @dgettext(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %112 = call i32 @snprintf(i8* %109, i32 1024, i8* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %26, align 4
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %118 = call i32 @zfs_standard_error(i32 %115, i32 %116, i8* %117)
  store i32 %118, i32* %10, align 4
  br label %166

119:                                              ; preds = %104, %94
  br label %120

120:                                              ; preds = %119, %77
  %121 = load i32, i32* %23, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %23, align 4
  %128 = call i32 @strerror(i32 %127)
  %129 = call i32 @zfs_error_aux(i32 %126, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @EZFS_BADBACKUP, align 4
  %134 = load i8*, i8** %19, align 8
  %135 = call i32 @zfs_error(i32 %132, i32 %133, i8* %134)
  store i32 %135, i32* %10, align 4
  br label %166

136:                                              ; preds = %120
  %137 = load i32*, i32** %21, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %12, align 8
  %142 = load i64, i64* %20, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @send_print_verbose(i32* %137, i32 %140, i8* %141, i64 %142, i32 %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %136
  %152 = load i32*, i32** %21, align 8
  %153 = load i64, i64* %20, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 @fprintf(i32* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %154)
  br label %165

156:                                              ; preds = %136
  %157 = load i64, i64* %20, align 8
  %158 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 0
  %159 = call i32 @zfs_nicenum(i64 %157, i8* %158, i32 16)
  %160 = load i32*, i32** %21, align 8
  %161 = load i32, i32* @TEXT_DOMAIN, align 4
  %162 = call i8* @dgettext(i32 %161, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %163 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 0
  %164 = call i32 @fprintf(i32* %160, i8* %162, i8* %163)
  br label %165

165:                                              ; preds = %156, %151
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %165, %123, %108, %63
  %167 = load i32, i32* %10, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @zfs_error_aux(i32, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @zfs_error(i32, i32, i8*) #2

declare dso_local i32 @lzc_send_space_resume_redacted(i32, i8*, i32, i64, i64, i64, i8*, i32, i64*) #2

declare dso_local i32 @lzc_flags_from_sendflags(%struct.TYPE_9__*) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @pthread_join(i32, i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #2

declare dso_local i32 @send_print_verbose(i32*, i32, i8*, i64, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @zfs_nicenum(i64, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
