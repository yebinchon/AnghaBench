; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_validate_name.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_validate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"snapshot delimiter '@' is not expected here\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"missing '@' delimiter in snapshot name\00", align 1
@ZFS_TYPE_BOOKMARK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"bookmark delimiter '#' is not expected here\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"missing '#' delimiter in bookmark name\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid character %c in name\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"name is too long\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"leading slash in name\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"empty component or misplaced '@' or '#' delimiter in name\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"trailing slash in name\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"invalid character '%c' in name\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"multiple '@' and/or '#' delimiters in name\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"pool doesn't begin with a letter\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"name is reserved\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"reserved disk name\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"self reference, '.' is found in name\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"parent reference, '..' is found in name\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"(%d) not defined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_validate_name(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @strchr(i8* %17, i8 signext 64)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @TEXT_DOMAIN, align 4
  %26 = call i32 @dgettext(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %24, i32 %26)
  br label %28

28:                                               ; preds = %23, %20
  store i32 0, i32* %5, align 4
  br label %172

29:                                               ; preds = %16, %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i32* @strchr(i8* %34, i8 signext 64)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i32 @dgettext(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %37
  store i32 0, i32* %5, align 4
  br label %172

46:                                               ; preds = %33, %29
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32* @strchr(i8* %52, i8 signext 35)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @TEXT_DOMAIN, align 4
  %61 = call i32 @dgettext(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %62 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  store i32 0, i32* %5, align 4
  br label %172

64:                                               ; preds = %51, %46
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = call i32* @strchr(i8* %69, i8 signext 35)
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @TEXT_DOMAIN, align 4
  %78 = call i32 @dgettext(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  store i32 0, i32* %5, align 4
  br label %172

81:                                               ; preds = %68, %64
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = call i32* @strchr(i8* %85, i8 signext 37)
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @TEXT_DOMAIN, align 4
  %94 = call i32 @dgettext(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %95 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %92, i32 %94, i32 37)
  br label %96

96:                                               ; preds = %91, %88
  store i32 0, i32* %5, align 4
  br label %172

97:                                               ; preds = %84, %81
  %98 = load i8*, i8** %7, align 8
  %99 = call i64 @entity_namecheck(i8* %98, i32* %10, i8* %11)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %171

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %170

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  switch i32 %105, label %163 [
    i32 129, label %106
    i32 135, label %111
    i32 137, label %116
    i32 128, label %121
    i32 136, label %126
    i32 134, label %133
    i32 133, label %138
    i32 131, label %143
    i32 138, label %148
    i32 130, label %153
    i32 132, label %158
  ]

106:                                              ; preds = %104
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* @TEXT_DOMAIN, align 4
  %109 = call i32 @dgettext(i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %110 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %107, i32 %109)
  br label %169

111:                                              ; preds = %104
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* @TEXT_DOMAIN, align 4
  %114 = call i32 @dgettext(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %115 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %112, i32 %114)
  br label %169

116:                                              ; preds = %104
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* @TEXT_DOMAIN, align 4
  %119 = call i32 @dgettext(i32 %118, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %120 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %117, i32 %119)
  br label %169

121:                                              ; preds = %104
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i32 @dgettext(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %125 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %122, i32 %124)
  br label %169

126:                                              ; preds = %104
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @TEXT_DOMAIN, align 4
  %129 = call i32 @dgettext(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i8, i8* %11, align 1
  %131 = sext i8 %130 to i32
  %132 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %127, i32 %129, i32 %131)
  br label %169

133:                                              ; preds = %104
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @TEXT_DOMAIN, align 4
  %136 = call i32 @dgettext(i32 %135, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %137 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %134, i32 %136)
  br label %169

138:                                              ; preds = %104
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* @TEXT_DOMAIN, align 4
  %141 = call i32 @dgettext(i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %142 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %139, i32 %141)
  br label %169

143:                                              ; preds = %104
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* @TEXT_DOMAIN, align 4
  %146 = call i32 @dgettext(i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %147 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %144, i32 %146)
  br label %169

148:                                              ; preds = %104
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* @TEXT_DOMAIN, align 4
  %151 = call i32 @dgettext(i32 %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %152 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %149, i32 %151)
  br label %169

153:                                              ; preds = %104
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* @TEXT_DOMAIN, align 4
  %156 = call i32 @dgettext(i32 %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %157 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %154, i32 %156)
  br label %169

158:                                              ; preds = %104
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* @TEXT_DOMAIN, align 4
  %161 = call i32 @dgettext(i32 %160, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %162 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %159, i32 %161)
  br label %169

163:                                              ; preds = %104
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @TEXT_DOMAIN, align 4
  %166 = call i32 @dgettext(i32 %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %164, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %158, %153, %148, %143, %138, %133, %126, %121, %116, %111, %106
  br label %170

170:                                              ; preds = %169, %101
  store i32 0, i32* %5, align 4
  br label %172

171:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %170, %96, %80, %63, %45, %28
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i64 @entity_namecheck(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
