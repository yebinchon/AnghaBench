; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_parse_input_msg_id.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_parse_input_msg_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@TGL_PEER_TEMP_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @parse_input_msg_id(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %2
  %17 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %120

19:                                               ; preds = %13
  %20 = call i32 @memset(%struct.TYPE_4__* %3, i32 0, i32 16)
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 32
  br i1 %23, label %24, label %98

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp slt i32 %34, 48
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sgt i32 %42, 57
  br i1 %43, label %44, label %62

44:                                               ; preds = %36, %28
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp slt i32 %50, 97
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sgt i32 %58, 102
  br i1 %59, label %60, label %62

60:                                               ; preds = %52, %44
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %120

62:                                               ; preds = %52, %36
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %25

66:                                               ; preds = %25
  %67 = bitcast %struct.TYPE_4__* %3 to i8*
  store i8* %67, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %94, %66
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 2, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @hex2int(i8 signext %77)
  %79 = mul nsw i32 %78, 16
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @hex2int(i8 signext %86)
  %88 = add nsw i32 %79, %87
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 %89, i8* %93, align 1
  br label %94

94:                                               ; preds = %71
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %68

97:                                               ; preds = %68
  br label %120

98:                                               ; preds = %19
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i8* @tstrndup(i8* %99, i32 %100)
  store i8* %101, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = call i64 @strtoll(i8* %102, i8** %9, i32 0)
  store i64 %103, i64* %10, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @tfree_str(i8* %104)
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = icmp ne i8* %106, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 0, i64* %113, align 8
  br label %119

114:                                              ; preds = %98
  %115 = load i64, i64* @TGL_PEER_TEMP_ID, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 %115, i64* %116, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %114, %112
  br label %120

120:                                              ; preds = %119, %97, %60, %16
  %121 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %122 = load { i64, i64 }, { i64, i64 }* %121, align 8
  ret { i64, i64 } %122
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hex2int(i8 signext) #1

declare dso_local i8* @tstrndup(i8*, i32) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @tfree_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
