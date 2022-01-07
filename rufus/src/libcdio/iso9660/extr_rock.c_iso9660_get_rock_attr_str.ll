; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_rock.c_iso9660_get_rock_attr_str.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_rock.c_iso9660_get_rock_attr_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISO_ROCK_IRUSR = common dso_local global i32 0, align 4
@ISO_ROCK_IWUSR = common dso_local global i32 0, align 4
@ISO_ROCK_ISUID = common dso_local global i32 0, align 4
@ISO_ROCK_IXUSR = common dso_local global i32 0, align 4
@ISO_ROCK_IRGRP = common dso_local global i32 0, align 4
@ISO_ROCK_IWGRP = common dso_local global i32 0, align 4
@ISO_ROCK_ISGID = common dso_local global i32 0, align 4
@ISO_ROCK_IXGRP = common dso_local global i32 0, align 4
@ISO_ROCK_IROTH = common dso_local global i32 0, align 4
@ISO_ROCK_IWOTH = common dso_local global i32 0, align 4
@ISO_ROCK_IXOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iso9660_get_rock_attr_str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* (...) @_getbuf()
  store i8* %4, i8** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @S_ISBLK(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 98, i8* %10, align 1
  br label %54

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 100, i8* %17, align 1
  br label %53

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @S_ISCHR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 99, i8* %24, align 1
  br label %52

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @S_ISLNK(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 108, i8* %31, align 1
  br label %51

32:                                               ; preds = %25
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @S_ISFIFO(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 112, i8* %38, align 1
  br label %50

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @S_ISSOCK(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 115, i8* %45, align 1
  br label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 45, i8* %48, align 1
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %22
  br label %53

53:                                               ; preds = %52, %15
  br label %54

54:                                               ; preds = %53, %8
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @ISO_ROCK_IRUSR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 114, i32 45
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %61, i8* %63, align 1
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @ISO_ROCK_IWUSR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 119, i32 45
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8 %70, i8* %72, align 1
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @ISO_ROCK_ISUID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %54
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @ISO_ROCK_IXUSR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 115, i32 83
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  store i8 %84, i8* %86, align 1
  br label %97

87:                                               ; preds = %54
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @ISO_ROCK_IXUSR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 120, i32 45
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8 %94, i8* %96, align 1
  br label %97

97:                                               ; preds = %87, %77
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* @ISO_ROCK_IRGRP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 114, i32 45
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %3, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  store i8 %104, i8* %106, align 1
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @ISO_ROCK_IWGRP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 119, i32 45
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %3, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 5
  store i8 %113, i8* %115, align 1
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @ISO_ROCK_ISGID, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %97
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @ISO_ROCK_IXGRP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 115, i32 83
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 6
  store i8 %127, i8* %129, align 1
  br label %140

130:                                              ; preds = %97
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* @ISO_ROCK_IXGRP, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 120, i32 45
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 6
  store i8 %137, i8* %139, align 1
  br label %140

140:                                              ; preds = %130, %120
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* @ISO_ROCK_IROTH, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 114, i32 45
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 7
  store i8 %147, i8* %149, align 1
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* @ISO_ROCK_IWOTH, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 119, i32 45
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %3, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 8
  store i8 %156, i8* %158, align 1
  %159 = load i32, i32* %2, align 4
  %160 = load i32, i32* @ISO_ROCK_IXOTH, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 120, i32 45
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 9
  store i8 %165, i8* %167, align 1
  %168 = load i8*, i8** %3, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 11
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %3, align 8
  ret i8* %170
}

declare dso_local i8* @_getbuf(...) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
