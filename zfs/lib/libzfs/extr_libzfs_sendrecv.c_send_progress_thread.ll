; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_progress_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_progress_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.tm = type { i32, i32, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TIME       %s   %sSNAPSHOT %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BYTES\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" SENT\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"   BLOCKS    \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"%02d:%02d:%02d\09%llu\09%llu\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%02d:%02d:%02d   %5s    %8llu    %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%02d:%02d:%02d\09%llu\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%02d:%02d:%02d   %5s   %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @send_progress_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @send_progress_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %5, align 8
  %18 = load i64, i64* @B_TRUE, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %167, %1
  %20 = call i32 @sleep(i32 1)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @zfs_send_progress(%struct.TYPE_4__* %21, i32 %24, i64* %6, i64* %7)
  store i32 %25, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @EINTR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i8* null, i8** %2, align 8
  br label %168

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %2, align 8
  br label %168

40:                                               ; preds = %19
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 2
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %61, i8* %64)
  %66 = load i64, i64* @B_FALSE, align 8
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %48, %43, %40
  %68 = call i32 @time(i32* %9)
  %69 = call %struct.tm* @localtime(i32* %9)
  store %struct.tm* %69, %struct.tm** %10, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %98

74:                                               ; preds = %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load i32, i32* @stderr, align 4
  %81 = load %struct.tm*, %struct.tm** %10, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tm*, %struct.tm** %10, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tm*, %struct.tm** %10, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %6, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i64, i64* %7, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 %86, i32 %89, i8* %91, i8* %93, i8* %96)
  br label %167

98:                                               ; preds = %74, %67
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %101, 2
  br i1 %102, label %103, label %124

103:                                              ; preds = %98
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %106 = call i32 @zfs_nicenum(i64 %104, i8* %105, i32 16)
  %107 = load i32, i32* @stderr, align 4
  %108 = load %struct.tm*, %struct.tm** %10, align 8
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.tm*, %struct.tm** %10, align 8
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tm*, %struct.tm** %10, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %118 = load i64, i64* %7, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %110, i32 %113, i32 %116, i8* %117, i8* %119, i8* %122)
  br label %166

124:                                              ; preds = %98
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %124
  %130 = load i32, i32* @stderr, align 4
  %131 = load %struct.tm*, %struct.tm** %10, align 8
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.tm*, %struct.tm** %10, align 8
  %135 = getelementptr inbounds %struct.tm, %struct.tm* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tm*, %struct.tm** %10, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* %6, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %133, i32 %136, i32 %139, i8* %141, i8* %144)
  br label %165

146:                                              ; preds = %124
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %149 = call i32 @zfs_nicebytes(i64 %147, i8* %148, i32 16)
  %150 = load i32, i32* @stderr, align 4
  %151 = load %struct.tm*, %struct.tm** %10, align 8
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.tm*, %struct.tm** %10, align 8
  %155 = getelementptr inbounds %struct.tm, %struct.tm* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.tm*, %struct.tm** %10, align 8
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %153, i32 %156, i32 %159, i8* %160, i8* %163)
  br label %165

165:                                              ; preds = %146, %129
  br label %166

166:                                              ; preds = %165, %103
  br label %167

167:                                              ; preds = %166, %79
  br label %19

168:                                              ; preds = %36, %35
  %169 = load i8*, i8** %2, align 8
  ret i8* %169
}

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @zfs_send_progress(%struct.TYPE_4__*, i32, i64*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @zfs_nicenum(i64, i8*, i32) #1

declare dso_local i32 @zfs_nicebytes(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
