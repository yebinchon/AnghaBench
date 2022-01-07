; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_login.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32, i32 }
%struct.TYPE_16__ = type { i8*, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"smb-domain\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"smb-user\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"smb-pwd\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Guest\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"smb-dialog-failed\00", align 1
@SMB1_LOGIN_DIALOG_TITLE = common dso_local global i32 0, align 4
@SMB_LOGIN_DIALOG_TEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Unable to login\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Login failure but you were logged in as a Guest\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Creds: username = '%s', domain = '%s'\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @login(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %12 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = call i32 @vlc_credential_init(%struct.TYPE_16__* %5, i32* %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = call i8* @var_InheritString(%struct.TYPE_17__* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i8*, i8** %6, align 8
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ null, %25 ]
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = call i64 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_16__* %5, %struct.TYPE_17__* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* %10, align 4
  br label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %35, %34
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i8* [ %46, %44 ], [ %50, %47 ]
  store i8* %52, i8** %9, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @smb_connect(%struct.TYPE_17__* %53, i8* %54, i8* %55, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %141

62:                                               ; preds = %51
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @EACCES, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %116

66:                                               ; preds = %62
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = call i64 @var_Type(%struct.TYPE_17__* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %141

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %102, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @EACCES, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %78 = load i32, i32* @SMB1_LOGIN_DIALOG_TITLE, align 4
  %79 = load i32, i32* @SMB_LOGIN_DIALOG_TEXT, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i8*, i32, i32, ...) @vlc_credential_get(%struct.TYPE_16__* %5, %struct.TYPE_17__* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79, i8* %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %76, %72
  %86 = phi i1 [ false, %72 ], [ %84, %76 ]
  br i1 %86, label %87, label %109

87:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  br label %102

98:                                               ; preds = %87
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i8* [ %97, %95 ], [ %101, %98 ]
  store i8* %103, i8** %9, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @smb_connect(%struct.TYPE_17__* %104, i8* %105, i8* %106, i8* %107)
  store i32 %108, i32* %11, align 4
  br label %72

109:                                              ; preds = %85
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = call i32 @msg_Err(%struct.TYPE_17__* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %141

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %62
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @smb_session_is_guest(i32 %123)
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %128 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Warn(%struct.TYPE_17__* %127, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %116
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Warn(%struct.TYPE_17__* %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %131, i8* %132)
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %138 = call i32 @vlc_credential_store(%struct.TYPE_16__* %5, %struct.TYPE_17__* %137)
  br label %139

139:                                              ; preds = %136, %129
  %140 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %112, %70, %61
  %142 = call i32 @vlc_credential_clean(%struct.TYPE_16__* %5)
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @vlc_credential_init(%struct.TYPE_16__*, i32*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @vlc_credential_get(%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @smb_connect(%struct.TYPE_17__*, i8*, i8*, i8*) #1

declare dso_local i64 @var_Type(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @smb_session_is_guest(i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @vlc_credential_store(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @vlc_credential_clean(%struct.TYPE_16__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
