; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistRepr.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ziplist.c_ziplistRepr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"{total bytes %d} {num entries %u}\0A{tail offset %u}\0A\00", align 1
@ZIP_END = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"{\0A\09addr 0x%08lx,\0A\09index %2d,\0A\09offset %5ld,\0A\09hdr+entry len: %5u,\0A\09hdr len%2u,\0A\09prevrawlen: %5u,\0A\09prevrawlensize: %2u,\0A\09payload %5u\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\09bytes: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x|\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\09[str]\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09[int]%lld\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"{end}\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ziplistRepr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @ZIPLIST_BYTES(i8* %7)
  %9 = call i32 @intrev32ifbe(i32 %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @ZIPLIST_LENGTH(i8* %10)
  %12 = call i32 @intrev16ifbe(i32 %11)
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @ZIPLIST_TAIL_OFFSET(i8* %13)
  %15 = call i32 @intrev32ifbe(i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @ZIPLIST_ENTRY_HEAD(i8* %17)
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %117, %1
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @ZIP_END, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %126

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @zipEntry(i8* %27, %struct.TYPE_3__* %5)
  %29 = load i8*, i8** %3, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i32, i32* %4, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %38, %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0), i64 %30, i32 %31, i64 %36, i32 %41, i32 %43, i32 %45, i32 %47, i32 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %68, %26
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %55, %57
  %59 = icmp ult i32 %53, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %52

71:                                               ; preds = %52
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ZIP_IS_STR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %71
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ugt i32 %85, 40
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* @stdout, align 4
  %90 = call i64 @fwrite(i8* %88, i32 40, i32 1, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %110

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @stdout, align 4
  %105 = call i64 @fwrite(i8* %101, i32 %103, i32 1, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %100, %96
  br label %110

110:                                              ; preds = %109, %94
  br label %117

111:                                              ; preds = %71
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @zipLoadInteger(i8* %112, i32 %114)
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %111, %110
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %3, align 8
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %3, align 8
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %19

126:                                              ; preds = %19
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @intrev32ifbe(i32) #1

declare dso_local i32 @ZIPLIST_BYTES(i8*) #1

declare dso_local i32 @intrev16ifbe(i32) #1

declare dso_local i32 @ZIPLIST_LENGTH(i8*) #1

declare dso_local i32 @ZIPLIST_TAIL_OFFSET(i8*) #1

declare dso_local i8* @ZIPLIST_ENTRY_HEAD(i8*) #1

declare dso_local i32 @zipEntry(i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @ZIP_IS_STR(i32) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @zipLoadInteger(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
