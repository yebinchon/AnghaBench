; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_sector.c_cdio_mmssff_to_lba.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_sector.c_cdio_mmssff_to_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CDIO_INVALID_LBA = common dso_local global i32 0, align 4
@CDIO_CD_SECS_PER_MIN = common dso_local global i32 0, align 4
@CDIO_CD_FRAMES_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdio_mmssff_to_lba(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 0, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %167

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sge i32 %16, 48
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sle i32 %20, 57
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %24, 48
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %18, %11
  %27 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %27, i32* %2, align 4
  br label %167

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  %32 = load i8, i8* %30, align 1
  store i8 %32, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 58, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, 10
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %47, 48
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %39, %35
  %51 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %51, i32* %2, align 4
  br label %167

52:                                               ; preds = %43
  br label %29

53:                                               ; preds = %29
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @cdio_msf3_to_lba(i32 %54, i32 0, i32 0)
  store i32 %55, i32* %5, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %3, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %6, align 1
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sge i32 %60, 48
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %62, %53
  %71 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %71, i32* %2, align 4
  br label %167

72:                                               ; preds = %66
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %3, align 8
  %75 = load i8, i8* %73, align 1
  store i8 %75, i8* %6, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 58, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load i8, i8* %6, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sge i32 %80, 48
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i8, i8* %6, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sle i32 %84, 57
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = mul nsw i32 %87, 10
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 48
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %4, align 4
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %3, align 8
  %95 = load i8, i8* %93, align 1
  store i8 %95, i8* %6, align 1
  %96 = load i8, i8* %6, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 58
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %100, i32* %2, align 4
  br label %167

101:                                              ; preds = %86
  br label %104

102:                                              ; preds = %82, %78
  %103 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %103, i32* %2, align 4
  br label %167

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104, %72
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @CDIO_CD_SECS_PER_MIN, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %110, i32* %2, align 4
  br label %167

111:                                              ; preds = %105
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @cdio_msf3_to_lba(i32 0, i32 %112, i32 0)
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %3, align 8
  %118 = load i8, i8* %116, align 1
  store i8 %118, i8* %6, align 1
  %119 = load i8, i8* %6, align 1
  %120 = call i64 @isdigit(i8 zeroext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = load i8, i8* %6, align 1
  %124 = zext i8 %123 to i32
  %125 = sub nsw i32 %124, 48
  store i32 %125, i32* %4, align 4
  br label %127

126:                                              ; preds = %111
  store i32 -1, i32* %2, align 4
  br label %167

127:                                              ; preds = %122
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %3, align 8
  %130 = load i8, i8* %128, align 1
  store i8 %130, i8* %6, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 0, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %127
  %134 = load i8, i8* %6, align 1
  %135 = call i64 @isdigit(i8 zeroext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 %138, 10
  %140 = load i8, i8* %6, align 1
  %141 = zext i8 %140 to i32
  %142 = sub nsw i32 %141, 48
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %4, align 4
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %3, align 8
  %146 = load i8, i8* %144, align 1
  store i8 %146, i8* %6, align 1
  br label %149

147:                                              ; preds = %133
  %148 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %148, i32* %2, align 4
  br label %167

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %127
  %151 = load i8, i8* %6, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 0, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %155, i32* %2, align 4
  br label %167

156:                                              ; preds = %150
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @CDIO_CD_FRAMES_PER_SEC, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @CDIO_INVALID_LBA, align 4
  store i32 %161, i32* %2, align 4
  br label %167

162:                                              ; preds = %156
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %162, %160, %154, %147, %126, %109, %102, %99, %70, %50, %26, %10
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cdio_msf3_to_lba(i32, i32, i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
