; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_get_linux_shareopts_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_get_linux_shareopts_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@SA_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"anonuid\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"root_mapping\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"root_squash\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nosub\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"subtree_check\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"insecure\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"secure\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"no_wdelay\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"wdelay\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"nohide\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"crossmnt\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"no_subtree_check\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"insecure_locks\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"secure_locks\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"no_auth_nlm\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"auth_nlm\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"no_acl\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"mountpoint\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"mp\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"fsuid\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"refer\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"replicas\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"no_root_squash\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"all_squash\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"no_all_squash\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"fsid\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"anongid\00", align 1
@SA_SYNTAX_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @get_linux_shareopts_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_linux_shareopts_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14, %3
  %23 = load i32, i32* @SA_OK, align 4
  store i32 %23, i32* %4, align 4
  br label %161

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8**, i8*** %8, align 8
  %35 = call i32 @add_linux_shareopt(i8** %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* null)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %155

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %155

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %155

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %155

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %155

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %155

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %155

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %155

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %155

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %155

81:                                               ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %155

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %155

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %155

93:                                               ; preds = %89
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %155

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %155

101:                                              ; preds = %97
  %102 = load i8*, i8** %5, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %155

105:                                              ; preds = %101
  %106 = load i8*, i8** %5, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %155

109:                                              ; preds = %105
  %110 = load i8*, i8** %5, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %155

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %113
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %117
  %122 = load i8*, i8** %5, align 8
  %123 = call i64 @strcmp(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %121
  %126 = load i8*, i8** %5, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load i8*, i8** %5, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load i8*, i8** %5, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = load i8*, i8** %5, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = load i8*, i8** %5, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load i8*, i8** %5, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i8*, i8** %5, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* @SA_SYNTAX_ERR, align 4
  store i32 %154, i32* %4, align 4
  br label %161

155:                                              ; preds = %149, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41
  %156 = load i8**, i8*** %8, align 8
  %157 = load i8*, i8** %5, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @add_linux_shareopt(i8** %156, i8* %157, i8* %158)
  %160 = load i32, i32* @SA_OK, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %155, %153, %22
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_linux_shareopt(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
