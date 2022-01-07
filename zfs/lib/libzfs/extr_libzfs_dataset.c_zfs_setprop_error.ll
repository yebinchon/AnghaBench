; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_setprop_error.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_setprop_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"size is less than current used or reserved space\00", align 1
@EZFS_PROPSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"size is greater than available space\00", align 1
@EZFS_DSREADONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"property value too long\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"pool and or dataset must be upgraded to set this property or value\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@ZFS_PROP_COMPRESSION = common dso_local global i32 0, align 4
@ZFS_PROP_DNODESIZE = common dso_local global i32 0, align 4
@ZFS_PROP_RECORDSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"property setting is not allowed on bootable datasets\00", align 1
@EZFS_NOTSUP = common dso_local global i32 0, align 4
@ZFS_PROP_CHECKSUM = common dso_local global i32 0, align 4
@ZFS_PROP_DEDUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"property setting is not allowed on root pools\00", align 1
@ZPROP_INVAL = common dso_local global i32 0, align 4
@ZFS_PROP_KEYLOCATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"keylocation may only be set on encryption roots\00", align 1
@EZFS_VOLTOOBIG = common dso_local global i32 0, align 4
@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_setprop_error(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %143 [
    i32 136, label %10
    i32 138, label %36
    i32 132, label %40
    i32 140, label %45
    i32 135, label %54
    i32 133, label %63
    i32 137, label %108
    i32 139, label %123
    i32 134, label %142
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %30 [
    i32 131, label %12
    i32 130, label %12
    i32 128, label %21
    i32 129, label %21
  ]

12:                                               ; preds = %10, %10
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @TEXT_DOMAIN, align 4
  %15 = call i32 @dgettext(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @zfs_error_aux(i32* %13, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @EZFS_PROPSPACE, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @zfs_error(i32* %17, i32 %18, i8* %19)
  br label %35

21:                                               ; preds = %10, %10
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @TEXT_DOMAIN, align 4
  %24 = call i32 @dgettext(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @zfs_error_aux(i32* %22, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @EZFS_PROPSPACE, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @zfs_error(i32* %26, i32 %27, i8* %28)
  br label %35

30:                                               ; preds = %10
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @zfs_standard_error(i32* %31, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %21, %12
  br label %148

36:                                               ; preds = %4
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @zfs_standard_error(i32* %37, i32 138, i8* %38)
  br label %148

40:                                               ; preds = %4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @EZFS_DSREADONLY, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @zfs_error(i32* %41, i32 %42, i8* %43)
  br label %148

45:                                               ; preds = %4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i32 @dgettext(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @zfs_error_aux(i32* %46, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @EZFS_BADPROP, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @zfs_error(i32* %50, i32 %51, i8* %52)
  br label %148

54:                                               ; preds = %4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @TEXT_DOMAIN, align 4
  %57 = call i32 @dgettext(i32 %56, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @zfs_error_aux(i32* %55, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @EZFS_BADVERSION, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @zfs_error(i32* %59, i32 %60, i8* %61)
  br label %148

63:                                               ; preds = %4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ZFS_PROP_COMPRESSION, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ZFS_PROP_DNODESIZE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @ZFS_PROP_RECORDSIZE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71, %67, %63
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @TEXT_DOMAIN, align 4
  %78 = call i32 @dgettext(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @zfs_error_aux(i32* %76, i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @EZFS_NOTSUP, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @zfs_error(i32* %80, i32 %81, i8* %82)
  br label %107

84:                                               ; preds = %71
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @ZFS_PROP_CHECKSUM, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @ZFS_PROP_DEDUP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88, %84
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* @TEXT_DOMAIN, align 4
  %95 = call i32 @dgettext(i32 %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %96 = call i32 @zfs_error_aux(i32* %93, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @EZFS_NOTSUP, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @zfs_error(i32* %97, i32 %98, i8* %99)
  br label %106

101:                                              ; preds = %88
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @zfs_standard_error(i32* %102, i32 %103, i8* %104)
  br label %106

106:                                              ; preds = %101, %92
  br label %107

107:                                              ; preds = %106, %75
  br label %148

108:                                              ; preds = %4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ZPROP_INVAL, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @EZFS_BADPROP, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @zfs_error(i32* %113, i32 %114, i8* %115)
  br label %122

117:                                              ; preds = %108
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @zfs_standard_error(i32* %118, i32 %119, i8* %120)
  br label %122

122:                                              ; preds = %117, %112
  br label %148

123:                                              ; preds = %4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @ZFS_PROP_KEYLOCATION, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* @TEXT_DOMAIN, align 4
  %130 = call i32 @dgettext(i32 %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %131 = call i32 @zfs_error_aux(i32* %128, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* @EZFS_BADPROP, align 4
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @zfs_error(i32* %132, i32 %133, i8* %134)
  br label %141

136:                                              ; preds = %123
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @zfs_standard_error(i32* %137, i32 %138, i8* %139)
  br label %141

141:                                              ; preds = %136, %127
  br label %148

142:                                              ; preds = %4
  br label %143

143:                                              ; preds = %4, %142
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @zfs_standard_error(i32* %144, i32 %145, i8* %146)
  br label %148

148:                                              ; preds = %143, %141, %122, %107, %54, %45, %40, %36, %35
  ret void
}

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
